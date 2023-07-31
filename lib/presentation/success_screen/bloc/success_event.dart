// ignore_for_file: must_be_immutable

part of 'success_bloc.dart';

@immutable
abstract class SuccessEvent extends Equatable {}

class SuccessInitialEvent extends SuccessEvent {
  @override
  List<Object?> get props => [];
}
