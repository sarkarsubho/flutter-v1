// ignore_for_file: must_be_immutable

part of 'notification_offer_bloc.dart';

@immutable
abstract class NotificationOfferEvent extends Equatable {}

class NotificationOfferInitialEvent extends NotificationOfferEvent {
  @override
  List<Object?> get props => [];
}
