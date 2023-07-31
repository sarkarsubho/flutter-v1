import 'package:equatable/equatable.dart';
import 'cart_item_model.dart';

// ignore: must_be_immutable
class CartModel extends Equatable {
  CartModel({this.cartItemList = const []});

  List<CartItemModel> cartItemList;

  CartModel copyWith({List<CartItemModel>? cartItemList}) {
    return CartModel(
      cartItemList: cartItemList ?? this.cartItemList,
    );
  }

  @override
  List<Object?> get props => [cartItemList];
}
