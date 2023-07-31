import 'package:equatable/equatable.dart';
import 'address_item_model.dart';

// ignore: must_be_immutable
class AddressModel extends Equatable {
  AddressModel({this.addressItemList = const []});

  List<AddressItemModel> addressItemList;

  AddressModel copyWith({List<AddressItemModel>? addressItemList}) {
    return AddressModel(
      addressItemList: addressItemList ?? this.addressItemList,
    );
  }

  @override
  List<Object?> get props => [addressItemList];
}
