// ignore_for_file: must_be_immutable

part of 'choose_credit_or_debit_card_bloc.dart';

@immutable
abstract class ChooseCreditOrDebitCardEvent extends Equatable {}

class ChooseCreditOrDebitCardInitialEvent extends ChooseCreditOrDebitCardEvent {
  @override
  List<Object?> get props => [];
}
