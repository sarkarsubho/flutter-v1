// ignore_for_file: must_be_immutable

part of 'address_bloc.dart';

@immutable
abstract class AddressEvent extends Equatable {}

class AddressInitialEvent extends AddressEvent {
  @override
  List<Object?> get props => [];
}
