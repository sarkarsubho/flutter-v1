// ignore_for_file: must_be_immutable

part of 'search_result_one_bloc.dart';

@immutable
abstract class SearchResultOneEvent extends Equatable {}

class SearchResultOneInitialEvent extends SearchResultOneEvent {
  @override
  List<Object?> get props => [];
}
