import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:fashon_bazar/presentation/add_address_screen/models/add_address_model.dart';
part 'add_address_event.dart';
part 'add_address_state.dart';

class AddAddressBloc extends Bloc<AddAddressEvent, AddAddressState> {
  AddAddressBloc(AddAddressState initialState) : super(initialState) {
    on<AddAddressInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AddAddressInitialEvent event,
    Emitter<AddAddressState> emit,
  ) async {
    emit(state.copyWith(
        oldpasswordController: TextEditingController(),
        oldpasswordOneController: TextEditingController(),
        oldpasswordTwoController: TextEditingController(),
        oldpasswordThreeController: TextEditingController(),
        oldpasswordFourController: TextEditingController(),
        oldpasswordFiveController: TextEditingController(),
        oldpasswordSixController: TextEditingController(),
        oldpasswordSevenController: TextEditingController(),
        oldpasswordEightController: TextEditingController()));
  }
}
