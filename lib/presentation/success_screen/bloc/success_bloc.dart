import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:fashon_bazar/presentation/success_screen/models/success_model.dart';
part 'success_event.dart';
part 'success_state.dart';

class SuccessBloc extends Bloc<SuccessEvent, SuccessState> {
  SuccessBloc(SuccessState initialState) : super(initialState) {
    on<SuccessInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SuccessInitialEvent event,
    Emitter<SuccessState> emit,
  ) async {}
}
