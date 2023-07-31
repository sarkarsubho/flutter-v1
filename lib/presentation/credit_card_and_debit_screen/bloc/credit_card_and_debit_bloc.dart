import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listvolume_item_model.dart';
import 'package:fashon_bazar/presentation/credit_card_and_debit_screen/models/credit_card_and_debit_model.dart';
part 'credit_card_and_debit_event.dart';
part 'credit_card_and_debit_state.dart';

class CreditCardAndDebitBloc
    extends Bloc<CreditCardAndDebitEvent, CreditCardAndDebitState> {
  CreditCardAndDebitBloc(CreditCardAndDebitState initialState)
      : super(initialState) {
    on<CreditCardAndDebitInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CreditCardAndDebitInitialEvent event,
    Emitter<CreditCardAndDebitState> emit,
  ) async {
    emit(state.copyWith(
        creditCardAndDebitModelObj: state.creditCardAndDebitModelObj
            ?.copyWith(listvolumeItemList: fillListvolumeItemList())));
  }

  List<ListvolumeItemModel> fillListvolumeItemList() {
    return List.generate(2, (index) => ListvolumeItemModel());
  }
}
