import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/sliderofferbannertitl_item_model.dart';
import '../models/categories_item_model.dart';
import '../models/flashsale_item_model.dart';
import '../models/megasale_item_model.dart';
import '../models/dashboard_item_model.dart';
import 'package:fashon_bazar/presentation/dashboard_page/models/dashboard_model.dart';
part 'dashboard_event.dart';
part 'dashboard_state.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  DashboardBloc(DashboardState initialState) : super(initialState) {
    on<DashboardInitialEvent>(_onInitialize);
  }

  List<SliderofferbannertitlItemModel> fillSliderofferbannertitlItemList() {
    return List.generate(1, (index) => SliderofferbannertitlItemModel());
  }

  List<CategoriesItemModel> fillCategoriesItemList() {
    return List.generate(6, (index) => CategoriesItemModel());
  }

  List<FlashsaleItemModel> fillFlashsaleItemList() {
    return List.generate(3, (index) => FlashsaleItemModel());
  }

  List<MegasaleItemModel> fillMegasaleItemList() {
    return List.generate(3, (index) => MegasaleItemModel());
  }

  List<DashboardItemModel> fillDashboardItemList() {
    return List.generate(4, (index) => DashboardItemModel());
  }

  _onInitialize(
    DashboardInitialEvent event,
    Emitter<DashboardState> emit,
  ) async {
    emit(state.copyWith(silderIndex: 0));
    emit(state.copyWith(
        dashboardModelObj: state.dashboardModelObj?.copyWith(
            sliderofferbannertitlItemList: fillSliderofferbannertitlItemList(),
            categoriesItemList: fillCategoriesItemList(),
            flashsaleItemList: fillFlashsaleItemList(),
            megasaleItemList: fillMegasaleItemList(),
            dashboardItemList: fillDashboardItemList())));
  }
}
