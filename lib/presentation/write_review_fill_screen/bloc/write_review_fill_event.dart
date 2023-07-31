// ignore_for_file: must_be_immutable

part of 'write_review_fill_bloc.dart';

@immutable
abstract class WriteReviewFillEvent extends Equatable {}

class WriteReviewFillInitialEvent extends WriteReviewFillEvent {
  @override
  List<Object?> get props => [];
}
