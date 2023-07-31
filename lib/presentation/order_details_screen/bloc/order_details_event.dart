// ignore_for_file: must_be_immutable

part of 'order_details_bloc.dart';

@immutable
abstract class OrderDetailsEvent extends Equatable {}

class OrderDetailsInitialEvent extends OrderDetailsEvent {
  @override
  List<Object?> get props => [];
}
