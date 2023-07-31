import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/ship_to_item_model.dart';
import 'package:fashon_bazar/presentation/ship_to_screen/models/ship_to_model.dart';
part 'ship_to_event.dart';
part 'ship_to_state.dart';

class ShipToBloc extends Bloc<ShipToEvent, ShipToState> {
  ShipToBloc(ShipToState initialState) : super(initialState) {
    on<ShipToInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ShipToInitialEvent event,
    Emitter<ShipToState> emit,
  ) async {
    emit(state.copyWith(
        shipToModelObj: state.shipToModelObj
            ?.copyWith(shipToItemList: fillShipToItemList())));
  }

  List<ShipToItemModel> fillShipToItemList() {
    return List.generate(3, (index) => ShipToItemModel());
  }
}
