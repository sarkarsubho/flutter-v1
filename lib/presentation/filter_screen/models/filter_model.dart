import 'package:equatable/equatable.dart';
import 'buyingformate_item_model.dart';
import 'itemlocation_item_model.dart';
import 'showonly_item_model.dart';

// ignore: must_be_immutable
class FilterModel extends Equatable {
  FilterModel(
      {this.buyingformateItemList = const [],
      this.itemlocationItemList = const [],
      this.showonlyItemList = const []});

  List<BuyingformateItemModel> buyingformateItemList;

  List<ItemlocationItemModel> itemlocationItemList;

  List<ShowonlyItemModel> showonlyItemList;

  FilterModel copyWith(
      {List<BuyingformateItemModel>? buyingformateItemList,
      List<ItemlocationItemModel>? itemlocationItemList,
      List<ShowonlyItemModel>? showonlyItemList}) {
    return FilterModel(
      buyingformateItemList:
          buyingformateItemList ?? this.buyingformateItemList,
      itemlocationItemList: itemlocationItemList ?? this.itemlocationItemList,
      showonlyItemList: showonlyItemList ?? this.showonlyItemList,
    );
  }

  @override
  List<Object?> get props =>
      [buyingformateItemList, itemlocationItemList, showonlyItemList];
}
