part of 'teams_cubit.dart';

@immutable
sealed class TeamsState {}

final class TeamsInitial extends TeamsState {}

class TeamsLoading extends TeamsState{}
class TeamsSuccess extends TeamsState {
  final List<TeamModel> teams;

  TeamsSuccess(this.teams);

  List<Object?> get props => [teams];
}

class TeamsError extends TeamsState {
  final String message;

  TeamsError(this.message);

  List<Object?> get props => [message];
}
