// ignore_for_file: must_be_immutable

part of 'offer_bloc.dart';

@immutable
abstract class OfferEvent extends Equatable {}

class OfferInitialEvent extends OfferEvent {
  @override
  List<Object?> get props => [];
}
