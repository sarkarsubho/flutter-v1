// ignore_for_file: must_be_immutable

part of 'add_address_bloc.dart';

@immutable
abstract class AddAddressEvent extends Equatable {}

class AddAddressInitialEvent extends AddAddressEvent {
  @override
  List<Object?> get props => [];
}
