part of 'competition_cubit.dart';

@immutable
sealed class CompetitionState {}

final class CompetitionInitial extends CompetitionState {}

final class FormAddedSuccess extends CompetitionState {}

final class FormAddedError extends CompetitionState {
  final String error;

  FormAddedError({required this.error});

}
