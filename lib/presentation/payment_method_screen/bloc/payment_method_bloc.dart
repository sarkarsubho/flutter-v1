import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:fashon_bazar/presentation/payment_method_screen/models/payment_method_model.dart';
part 'payment_method_event.dart';
part 'payment_method_state.dart';

class PaymentMethodBloc extends Bloc<PaymentMethodEvent, PaymentMethodState> {
  PaymentMethodBloc(PaymentMethodState initialState) : super(initialState) {
    on<PaymentMethodInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PaymentMethodInitialEvent event,
    Emitter<PaymentMethodState> emit,
  ) async {}
}
