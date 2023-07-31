import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class BuyingformateItemModel extends Equatable {
  BuyingformateItemModel(
      {this.alllistingsTxt = "All Listings", this.isSelected = false});

  String alllistingsTxt;

  bool isSelected;

  BuyingformateItemModel copyWith({String? alllistingsTxt, bool? isSelected}) {
    return BuyingformateItemModel(
      alllistingsTxt: alllistingsTxt ?? this.alllistingsTxt,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [alllistingsTxt, isSelected];
}
