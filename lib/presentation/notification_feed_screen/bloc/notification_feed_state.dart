// ignore_for_file: must_be_immutable

part of 'notification_feed_bloc.dart';

class NotificationFeedState extends Equatable {
  NotificationFeedState({this.notificationFeedModelObj});

  NotificationFeedModel? notificationFeedModelObj;

  @override
  List<Object?> get props => [
        notificationFeedModelObj,
      ];
  NotificationFeedState copyWith(
      {NotificationFeedModel? notificationFeedModelObj}) {
    return NotificationFeedState(
      notificationFeedModelObj:
          notificationFeedModelObj ?? this.notificationFeedModelObj,
    );
  }
}
