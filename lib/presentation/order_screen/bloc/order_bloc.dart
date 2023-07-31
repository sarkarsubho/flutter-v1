import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/order_item_model.dart';
import 'package:fashon_bazar/presentation/order_screen/models/order_model.dart';
part 'order_event.dart';
part 'order_state.dart';

class OrderBloc extends Bloc<OrderEvent, OrderState> {
  OrderBloc(OrderState initialState) : super(initialState) {
    on<OrderInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OrderInitialEvent event,
    Emitter<OrderState> emit,
  ) async {
    emit(state.copyWith(
        orderModelObj:
            state.orderModelObj?.copyWith(orderItemList: fillOrderItemList())));
  }

  List<OrderItemModel> fillOrderItemList() {
    return List.generate(3, (index) => OrderItemModel());
  }
}
