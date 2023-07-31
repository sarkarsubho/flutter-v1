import 'package:equatable/equatable.dart';
import 'slidervolume_item_model.dart';

// ignore: must_be_immutable
class ChooseCreditOrDebitCardModel extends Equatable {
  ChooseCreditOrDebitCardModel({this.slidervolumeItemList = const []});

  List<SlidervolumeItemModel> slidervolumeItemList;

  ChooseCreditOrDebitCardModel copyWith(
      {List<SlidervolumeItemModel>? slidervolumeItemList}) {
    return ChooseCreditOrDebitCardModel(
      slidervolumeItemList: slidervolumeItemList ?? this.slidervolumeItemList,
    );
  }

  @override
  List<Object?> get props => [slidervolumeItemList];
}
