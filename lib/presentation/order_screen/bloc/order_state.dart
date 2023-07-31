// ignore_for_file: must_be_immutable

part of 'order_bloc.dart';

class OrderState extends Equatable {
  OrderState({this.orderModelObj});

  OrderModel? orderModelObj;

  @override
  List<Object?> get props => [
        orderModelObj,
      ];
  OrderState copyWith({OrderModel? orderModelObj}) {
    return OrderState(
      orderModelObj: orderModelObj ?? this.orderModelObj,
    );
  }
}
