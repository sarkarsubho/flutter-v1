import '../models/buyingformate_item_model.dart';
import '../models/itemlocation_item_model.dart';
import '../models/showonly_item_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/buyingformate_item_model.dart';
import '../models/itemlocation_item_model.dart';
import '../models/showonly_item_model.dart';
import 'package:fashon_bazar/presentation/filter_screen/models/filter_model.dart';
part 'filter_event.dart';
part 'filter_state.dart';

class FilterBloc extends Bloc<FilterEvent, FilterState> {
  FilterBloc(FilterState initialState) : super(initialState) {
    on<FilterInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
    on<UpdateChipView1Event>(_updateChipView1);
    on<UpdateChipView2Event>(_updateChipView2);
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<FilterState> emit,
  ) {
    List<BuyingformateItemModel> newList = List<BuyingformateItemModel>.from(
        state.filterModelObj!.buyingformateItemList);
    newList[event.index] =
        newList[event.index].copyWith(isSelected: event.isSelected);
    emit(state.copyWith(
        filterModelObj:
            state.filterModelObj?.copyWith(buyingformateItemList: newList)));
  }

  _updateChipView1(
    UpdateChipView1Event event,
    Emitter<FilterState> emit,
  ) {
    List<ItemlocationItemModel> newList = List<ItemlocationItemModel>.from(
        state.filterModelObj!.itemlocationItemList);
    newList[event.index] =
        newList[event.index].copyWith(isSelected: event.isSelected);
    emit(state.copyWith(
        filterModelObj:
            state.filterModelObj?.copyWith(itemlocationItemList: newList)));
  }

  _updateChipView2(
    UpdateChipView2Event event,
    Emitter<FilterState> emit,
  ) {
    List<ShowonlyItemModel> newList =
        List<ShowonlyItemModel>.from(state.filterModelObj!.showonlyItemList);
    newList[event.index] =
        newList[event.index].copyWith(isSelected: event.isSelected);
    emit(state.copyWith(
        filterModelObj:
            state.filterModelObj?.copyWith(showonlyItemList: newList)));
  }

  List<BuyingformateItemModel> fillBuyingformateItemList() {
    return List.generate(5, (index) => BuyingformateItemModel());
  }

  List<ItemlocationItemModel> fillItemlocationItemList() {
    return List.generate(4, (index) => ItemlocationItemModel());
  }

  List<ShowonlyItemModel> fillShowonlyItemList() {
    return List.generate(11, (index) => ShowonlyItemModel());
  }

  _onInitialize(
    FilterInitialEvent event,
    Emitter<FilterState> emit,
  ) async {
    emit(state.copyWith(
        priceController: TextEditingController(),
        priceOneController: TextEditingController()));
    emit(state.copyWith(
        filterModelObj: state.filterModelObj?.copyWith(
            buyingformateItemList: fillBuyingformateItemList(),
            itemlocationItemList: fillItemlocationItemList(),
            showonlyItemList: fillShowonlyItemList())));
  }
}
