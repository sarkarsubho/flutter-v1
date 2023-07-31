// ignore_for_file: must_be_immutable

part of 'product_detail_bloc.dart';

@immutable
abstract class ProductDetailEvent extends Equatable {}

class ProductDetailInitialEvent extends ProductDetailEvent {
  @override
  List<Object?> get props => [];
}
