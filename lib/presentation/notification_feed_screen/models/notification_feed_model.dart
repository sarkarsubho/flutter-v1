import 'package:equatable/equatable.dart';
import 'listnewproduct_item_model.dart';

// ignore: must_be_immutable
class NotificationFeedModel extends Equatable {
  NotificationFeedModel({this.listnewproductItemList = const []});

  List<ListnewproductItemModel> listnewproductItemList;

  NotificationFeedModel copyWith(
      {List<ListnewproductItemModel>? listnewproductItemList}) {
    return NotificationFeedModel(
      listnewproductItemList:
          listnewproductItemList ?? this.listnewproductItemList,
    );
  }

  @override
  List<Object?> get props => [listnewproductItemList];
}
