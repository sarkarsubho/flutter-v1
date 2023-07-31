// ignore_for_file: must_be_immutable

part of 'favorite_product_bloc.dart';

@immutable
abstract class FavoriteProductEvent extends Equatable {}

class FavoriteProductInitialEvent extends FavoriteProductEvent {
  @override
  List<Object?> get props => [];
}
