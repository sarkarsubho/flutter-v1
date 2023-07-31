import 'package:equatable/equatable.dart';
import 'gridnikeairmaxreact_item_model.dart';

// ignore: must_be_immutable
class FavoriteProductModel extends Equatable {
  FavoriteProductModel({this.gridnikeairmaxreactItemList = const []});

  List<GridnikeairmaxreactItemModel> gridnikeairmaxreactItemList;

  FavoriteProductModel copyWith(
      {List<GridnikeairmaxreactItemModel>? gridnikeairmaxreactItemList}) {
    return FavoriteProductModel(
      gridnikeairmaxreactItemList:
          gridnikeairmaxreactItemList ?? this.gridnikeairmaxreactItemList,
    );
  }

  @override
  List<Object?> get props => [gridnikeairmaxreactItemList];
}
