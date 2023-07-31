import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/slidervolume_item_model.dart';
import 'package:fashon_bazar/presentation/choose_credit_or_debit_card_screen/models/choose_credit_or_debit_card_model.dart';
part 'choose_credit_or_debit_card_event.dart';
part 'choose_credit_or_debit_card_state.dart';

class ChooseCreditOrDebitCardBloc
    extends Bloc<ChooseCreditOrDebitCardEvent, ChooseCreditOrDebitCardState> {
  ChooseCreditOrDebitCardBloc(ChooseCreditOrDebitCardState initialState)
      : super(initialState) {
    on<ChooseCreditOrDebitCardInitialEvent>(_onInitialize);
  }

  List<SlidervolumeItemModel> fillSlidervolumeItemList() {
    return List.generate(1, (index) => SlidervolumeItemModel());
  }

  _onInitialize(
    ChooseCreditOrDebitCardInitialEvent event,
    Emitter<ChooseCreditOrDebitCardState> emit,
  ) async {
    emit(state.copyWith(silderIndex: 0));
    emit(state.copyWith(
        chooseCreditOrDebitCardModelObj: state.chooseCreditOrDebitCardModelObj
            ?.copyWith(slidervolumeItemList: fillSlidervolumeItemList())));
  }
}
