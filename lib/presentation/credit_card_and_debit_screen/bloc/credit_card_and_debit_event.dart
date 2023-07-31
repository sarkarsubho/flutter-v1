// ignore_for_file: must_be_immutable

part of 'credit_card_and_debit_bloc.dart';

@immutable
abstract class CreditCardAndDebitEvent extends Equatable {}

class CreditCardAndDebitInitialEvent extends CreditCardAndDebitEvent {
  @override
  List<Object?> get props => [];
}
