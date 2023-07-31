import 'package:equatable/equatable.dart';
import 'order_item_model.dart';

// ignore: must_be_immutable
class OrderModel extends Equatable {
  OrderModel({this.orderItemList = const []});

  List<OrderItemModel> orderItemList;

  OrderModel copyWith({List<OrderItemModel>? orderItemList}) {
    return OrderModel(
      orderItemList: orderItemList ?? this.orderItemList,
    );
  }

  @override
  List<Object?> get props => [orderItemList];
}
