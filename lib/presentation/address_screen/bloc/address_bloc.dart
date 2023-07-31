import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/address_item_model.dart';
import 'package:fashon_bazar/presentation/address_screen/models/address_model.dart';
part 'address_event.dart';
part 'address_state.dart';

class AddressBloc extends Bloc<AddressEvent, AddressState> {
  AddressBloc(AddressState initialState) : super(initialState) {
    on<AddressInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AddressInitialEvent event,
    Emitter<AddressState> emit,
  ) async {
    emit(state.copyWith(
        addressModelObj: state.addressModelObj
            ?.copyWith(addressItemList: fillAddressItemList())));
  }

  List<AddressItemModel> fillAddressItemList() {
    return List.generate(2, (index) => AddressItemModel());
  }
}
