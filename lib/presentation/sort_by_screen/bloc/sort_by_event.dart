// ignore_for_file: must_be_immutable

part of 'sort_by_bloc.dart';

@immutable
abstract class SortByEvent extends Equatable {}

class SortByInitialEvent extends SortByEvent {
  @override
  List<Object?> get props => [];
}
