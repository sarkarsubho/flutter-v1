// ignore_for_file: must_be_immutable

part of 'ship_to_bloc.dart';

@immutable
abstract class ShipToEvent extends Equatable {}

class ShipToInitialEvent extends ShipToEvent {
  @override
  List<Object?> get props => [];
}
