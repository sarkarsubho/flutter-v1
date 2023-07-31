// ignore_for_file: must_be_immutable

part of 'notification_feed_bloc.dart';

@immutable
abstract class NotificationFeedEvent extends Equatable {}

class NotificationFeedInitialEvent extends NotificationFeedEvent {
  @override
  List<Object?> get props => [];
}
