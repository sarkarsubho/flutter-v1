// ignore_for_file: must_be_immutable

part of 'account_bloc.dart';

@immutable
abstract class AccountEvent extends Equatable {}

class AccountInitialEvent extends AccountEvent {
  @override
  List<Object?> get props => [];
}
