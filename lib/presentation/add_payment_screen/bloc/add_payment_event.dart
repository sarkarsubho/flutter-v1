// ignore_for_file: must_be_immutable

part of 'add_payment_bloc.dart';

@immutable
abstract class AddPaymentEvent extends Equatable {}

class AddPaymentInitialEvent extends AddPaymentEvent {
  @override
  List<Object?> get props => [];
}
