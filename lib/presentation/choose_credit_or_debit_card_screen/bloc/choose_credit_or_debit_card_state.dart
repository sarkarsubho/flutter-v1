// ignore_for_file: must_be_immutable

part of 'choose_credit_or_debit_card_bloc.dart';

class ChooseCreditOrDebitCardState extends Equatable {
  ChooseCreditOrDebitCardState({
    this.silderIndex = 0,
    this.chooseCreditOrDebitCardModelObj,
  });

  ChooseCreditOrDebitCardModel? chooseCreditOrDebitCardModelObj;

  int silderIndex;

  @override
  List<Object?> get props => [
        silderIndex,
        chooseCreditOrDebitCardModelObj,
      ];
  ChooseCreditOrDebitCardState copyWith({
    int? silderIndex,
    ChooseCreditOrDebitCardModel? chooseCreditOrDebitCardModelObj,
  }) {
    return ChooseCreditOrDebitCardState(
      silderIndex: silderIndex ?? this.silderIndex,
      chooseCreditOrDebitCardModelObj: chooseCreditOrDebitCardModelObj ??
          this.chooseCreditOrDebitCardModelObj,
    );
  }
}
