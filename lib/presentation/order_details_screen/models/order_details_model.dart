import 'package:equatable/equatable.dart';
import 'order_details_item_model.dart';

// ignore: must_be_immutable
class OrderDetailsModel extends Equatable {
  OrderDetailsModel({this.orderDetailsItemList = const []});

  List<OrderDetailsItemModel> orderDetailsItemList;

  OrderDetailsModel copyWith(
      {List<OrderDetailsItemModel>? orderDetailsItemList}) {
    return OrderDetailsModel(
      orderDetailsItemList: orderDetailsItemList ?? this.orderDetailsItemList,
    );
  }

  @override
  List<Object?> get props => [orderDetailsItemList];
}
