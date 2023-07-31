import 'package:equatable/equatable.dart';
import 'sliderofferbannertitl_item_model.dart';
import 'categories_item_model.dart';
import 'flashsale_item_model.dart';
import 'megasale_item_model.dart';
import 'dashboard_item_model.dart';

// ignore: must_be_immutable
class DashboardModel extends Equatable {
  DashboardModel(
      {this.sliderofferbannertitlItemList = const [],
      this.categoriesItemList = const [],
      this.flashsaleItemList = const [],
      this.megasaleItemList = const [],
      this.dashboardItemList = const []});

  List<SliderofferbannertitlItemModel> sliderofferbannertitlItemList;

  List<CategoriesItemModel> categoriesItemList;

  List<FlashsaleItemModel> flashsaleItemList;

  List<MegasaleItemModel> megasaleItemList;

  List<DashboardItemModel> dashboardItemList;

  DashboardModel copyWith(
      {List<SliderofferbannertitlItemModel>? sliderofferbannertitlItemList,
      List<CategoriesItemModel>? categoriesItemList,
      List<FlashsaleItemModel>? flashsaleItemList,
      List<MegasaleItemModel>? megasaleItemList,
      List<DashboardItemModel>? dashboardItemList}) {
    return DashboardModel(
      sliderofferbannertitlItemList:
          sliderofferbannertitlItemList ?? this.sliderofferbannertitlItemList,
      categoriesItemList: categoriesItemList ?? this.categoriesItemList,
      flashsaleItemList: flashsaleItemList ?? this.flashsaleItemList,
      megasaleItemList: megasaleItemList ?? this.megasaleItemList,
      dashboardItemList: dashboardItemList ?? this.dashboardItemList,
    );
  }

  @override
  List<Object?> get props => [
        sliderofferbannertitlItemList,
        categoriesItemList,
        flashsaleItemList,
        megasaleItemList,
        dashboardItemList
      ];
}
