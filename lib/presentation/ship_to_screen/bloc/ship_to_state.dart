// ignore_for_file: must_be_immutable

part of 'ship_to_bloc.dart';

class ShipToState extends Equatable {
  ShipToState({this.shipToModelObj});

  ShipToModel? shipToModelObj;

  @override
  List<Object?> get props => [
        shipToModelObj,
      ];
  ShipToState copyWith({ShipToModel? shipToModelObj}) {
    return ShipToState(
      shipToModelObj: shipToModelObj ?? this.shipToModelObj,
    );
  }
}
