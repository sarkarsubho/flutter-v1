import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:fashon_bazar/presentation/add_card_screen/models/add_card_model.dart';
part 'add_card_event.dart';
part 'add_card_state.dart';

class AddCardBloc extends Bloc<AddCardEvent, AddCardState> {
  AddCardBloc(AddCardState initialState) : super(initialState) {
    on<AddCardInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AddCardInitialEvent event,
    Emitter<AddCardState> emit,
  ) async {
    emit(state.copyWith(
        entercardnumberOneController: TextEditingController(),
        expirationdateOneController: TextEditingController(),
        securitycodeOneController: TextEditingController(),
        entercardnumberThreeController: TextEditingController()));
  }
}
