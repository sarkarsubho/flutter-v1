// ignore_for_file: must_be_immutable

part of 'cart_bloc.dart';

@immutable
abstract class CartEvent extends Equatable {}

class CartInitialEvent extends CartEvent {
  @override
  List<Object?> get props => [];
}
