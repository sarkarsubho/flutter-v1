// ignore_for_file: must_be_immutable

part of 'payment_method_bloc.dart';

@immutable
abstract class PaymentMethodEvent extends Equatable {}

class PaymentMethodInitialEvent extends PaymentMethodEvent {
  @override
  List<Object?> get props => [];
}
