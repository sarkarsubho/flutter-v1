import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class ItemlocationItemModel extends Equatable {
  ItemlocationItemModel({this.usonlyTxt = "US Only", this.isSelected = false});

  String usonlyTxt;

  bool isSelected;

  ItemlocationItemModel copyWith({String? usonlyTxt, bool? isSelected}) {
    return ItemlocationItemModel(
      usonlyTxt: usonlyTxt ?? this.usonlyTxt,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [usonlyTxt, isSelected];
}
