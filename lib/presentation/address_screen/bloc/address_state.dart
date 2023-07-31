// ignore_for_file: must_be_immutable

part of 'address_bloc.dart';

class AddressState extends Equatable {
  AddressState({this.addressModelObj});

  AddressModel? addressModelObj;

  @override
  List<Object?> get props => [
        addressModelObj,
      ];
  AddressState copyWith({AddressModel? addressModelObj}) {
    return AddressState(
      addressModelObj: addressModelObj ?? this.addressModelObj,
    );
  }
}
