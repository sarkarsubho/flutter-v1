// ignore_for_file: must_be_immutable

part of 'review_product_bloc.dart';

@immutable
abstract class ReviewProductEvent extends Equatable {}

class ReviewProductInitialEvent extends ReviewProductEvent {
  @override
  List<Object?> get props => [];
}
