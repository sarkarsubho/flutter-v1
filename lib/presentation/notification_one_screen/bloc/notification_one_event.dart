// ignore_for_file: must_be_immutable

part of 'notification_one_bloc.dart';

@immutable
abstract class NotificationOneEvent extends Equatable {}

class NotificationOneInitialEvent extends NotificationOneEvent {
  @override
  List<Object?> get props => [];
}
