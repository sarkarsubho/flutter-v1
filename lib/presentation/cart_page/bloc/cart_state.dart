// ignore_for_file: must_be_immutable

part of 'cart_bloc.dart';

class CartState extends Equatable {
  CartState({
    this.coponcodefieldController,
    this.cartModelObj,
  });

  TextEditingController? coponcodefieldController;

  CartModel? cartModelObj;

  @override
  List<Object?> get props => [
        coponcodefieldController,
        cartModelObj,
      ];
  CartState copyWith({
    TextEditingController? coponcodefieldController,
    CartModel? cartModelObj,
  }) {
    return CartState(
      coponcodefieldController:
          coponcodefieldController ?? this.coponcodefieldController,
      cartModelObj: cartModelObj ?? this.cartModelObj,
    );
  }
}
