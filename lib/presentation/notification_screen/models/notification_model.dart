import 'package:equatable/equatable.dart';
import 'notification_item_model.dart';

// ignore: must_be_immutable
class NotificationModel extends Equatable {
  NotificationModel({this.notificationItemList = const []});

  List<NotificationItemModel> notificationItemList;

  NotificationModel copyWith(
      {List<NotificationItemModel>? notificationItemList}) {
    return NotificationModel(
      notificationItemList: notificationItemList ?? this.notificationItemList,
    );
  }

  @override
  List<Object?> get props => [notificationItemList];
}
