import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import '../../models/member_model.dart';
import '../../models/team_model.dart';
part 'teams_state.dart';

class TeamsCubit extends Cubit<TeamsState> {
  TeamsCubit() : super(TeamsInitial());

  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<void> fetchTeams(String conferenceId) async {
    emit(TeamsLoading());

    try {
      final teamsSnap = await _db
          .collection("conferences")
          .doc(conferenceId)
          .collection("teams")
          .get();

      List<TeamModel> teams = [];

      for (var teamDoc in teamsSnap.docs) {
        final membersSnap = await teamDoc.reference.collection("members").get();

        final members = membersSnap.docs
            .map((m) => MemberModel.fromFireStore(m.data(), m.id, teamDoc.id))
            .toList();

        teams.add(
          TeamModel.fromFireStore(teamDoc.id, teamDoc.data(), members),
        );
      }

      emit(TeamsSuccess(teams));
    } catch (e) {
      emit(TeamsError(e.toString()));
    }
  }


  Future<void> updateTeamScore(
      String conferenceId, String teamId, int newScore) async {
    if (state is TeamsSuccess) {
      final currentTeams = (state as TeamsSuccess).teams;
      final updatedTeams = currentTeams.map((team) {
        if (team.id == teamId) {
          return TeamModel(
            id: team.id,
            text: team.text,
            score: newScore,
            members: team.members,
            color: team.color,
          );
        }
        return team;
      }).toList();

      emit(TeamsSuccess(updatedTeams));
    }

    await _db
        .collection("conferences")
        .doc(conferenceId)
        .collection("teams")
        .doc(teamId)
        .update({"score": newScore});
  }


  Future<void> updateMemberScore(
      String conferenceId, String teamId, String memberId, int addedPoints) async {

    if (state is TeamsSuccess) {
      final currentTeams = (state as TeamsSuccess).teams;

      final updatedTeams = currentTeams.map((team) {
        if (team.id == teamId) {

          int newTeamScore = team.score;

          final updatedMembers = team.members.map((member) {
            if (member.id == memberId) {
              final newMemberScore = member.score + addedPoints;
              newTeamScore += addedPoints;
              return MemberModel(
                id: member.id,
                name: member.name,
                score: newMemberScore,
                teamId: member.teamId,
              );
            }
            return member;
          }).toList();

          return TeamModel(
            id: team.id,
            text: team.text,
            score: newTeamScore,
            members: updatedMembers,
            color: team.color,
          );
        }
        return team;
      }).toList();

      emit(TeamsSuccess(updatedTeams));
    }

    await _db
        .collection("conferences")
        .doc(conferenceId)
        .collection("teams")
        .doc(teamId)
        .collection("members")
        .doc(memberId)
        .update({"score": FieldValue.increment(addedPoints)});

    await _db
        .collection("conferences")
        .doc(conferenceId)
        .collection("teams")
        .doc(teamId)
        .update({"score": FieldValue.increment(addedPoints)});
  }

}
