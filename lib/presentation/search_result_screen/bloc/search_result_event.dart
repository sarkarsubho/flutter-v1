// ignore_for_file: must_be_immutable

part of 'search_result_bloc.dart';

@immutable
abstract class SearchResultEvent extends Equatable {}

class SearchResultInitialEvent extends SearchResultEvent {
  @override
  List<Object?> get props => [];
}
