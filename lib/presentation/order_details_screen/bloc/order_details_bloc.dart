import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/order_details_item_model.dart';
import 'package:fashon_bazar/presentation/order_details_screen/models/order_details_model.dart';
part 'order_details_event.dart';
part 'order_details_state.dart';

class OrderDetailsBloc extends Bloc<OrderDetailsEvent, OrderDetailsState> {
  OrderDetailsBloc(OrderDetailsState initialState) : super(initialState) {
    on<OrderDetailsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OrderDetailsInitialEvent event,
    Emitter<OrderDetailsState> emit,
  ) async {
    emit(state.copyWith(
        orderDetailsModelObj: state.orderDetailsModelObj
            ?.copyWith(orderDetailsItemList: fillOrderDetailsItemList())));
  }

  List<OrderDetailsItemModel> fillOrderDetailsItemList() {
    return List.generate(2, (index) => OrderDetailsItemModel());
  }
}
