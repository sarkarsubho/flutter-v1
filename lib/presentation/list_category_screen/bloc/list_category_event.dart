// ignore_for_file: must_be_immutable

part of 'list_category_bloc.dart';

@immutable
abstract class ListCategoryEvent extends Equatable {}

class ListCategoryInitialEvent extends ListCategoryEvent {
  @override
  List<Object?> get props => [];
}
