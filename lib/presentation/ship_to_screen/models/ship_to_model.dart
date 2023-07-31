import 'package:equatable/equatable.dart';
import 'ship_to_item_model.dart';

// ignore: must_be_immutable
class ShipToModel extends Equatable {
  ShipToModel({this.shipToItemList = const []});

  List<ShipToItemModel> shipToItemList;

  ShipToModel copyWith({List<ShipToItemModel>? shipToItemList}) {
    return ShipToModel(
      shipToItemList: shipToItemList ?? this.shipToItemList,
    );
  }

  @override
  List<Object?> get props => [shipToItemList];
}
