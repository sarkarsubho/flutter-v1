// ignore_for_file: must_be_immutable

part of 'add_card_bloc.dart';

@immutable
abstract class AddCardEvent extends Equatable {}

class AddCardInitialEvent extends AddCardEvent {
  @override
  List<Object?> get props => [];
}
