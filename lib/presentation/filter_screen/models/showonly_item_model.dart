import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class ShowonlyItemModel extends Equatable {
  ShowonlyItemModel(
      {this.freereturnsTxt = "Free Returns", this.isSelected = false});

  String freereturnsTxt;

  bool isSelected;

  ShowonlyItemModel copyWith({String? freereturnsTxt, bool? isSelected}) {
    return ShowonlyItemModel(
      freereturnsTxt: freereturnsTxt ?? this.freereturnsTxt,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [freereturnsTxt, isSelected];
}
