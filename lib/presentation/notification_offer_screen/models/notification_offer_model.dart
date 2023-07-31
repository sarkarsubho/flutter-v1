import 'package:equatable/equatable.dart';
import 'listoffer_item_model.dart';

// ignore: must_be_immutable
class NotificationOfferModel extends Equatable {
  NotificationOfferModel({this.listofferItemList = const []});

  List<ListofferItemModel> listofferItemList;

  NotificationOfferModel copyWith(
      {List<ListofferItemModel>? listofferItemList}) {
    return NotificationOfferModel(
      listofferItemList: listofferItemList ?? this.listofferItemList,
    );
  }

  @override
  List<Object?> get props => [listofferItemList];
}
