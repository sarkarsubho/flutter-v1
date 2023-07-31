// ignore_for_file: must_be_immutable

part of 'order_bloc.dart';

@immutable
abstract class OrderEvent extends Equatable {}

class OrderInitialEvent extends OrderEvent {
  @override
  List<Object?> get props => [];
}
