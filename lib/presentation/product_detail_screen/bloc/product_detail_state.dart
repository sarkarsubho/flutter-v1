// ignore_for_file: must_be_immutable

part of 'product_detail_bloc.dart';

class ProductDetailState extends Equatable {
  ProductDetailState({
    this.silderIndex = 0,
    this.productDetailModelObj,
  });

  ProductDetailModel? productDetailModelObj;

  int silderIndex;

  @override
  List<Object?> get props => [
        silderIndex,
        productDetailModelObj,
      ];
  ProductDetailState copyWith({
    int? silderIndex,
    ProductDetailModel? productDetailModelObj,
  }) {
    return ProductDetailState(
      silderIndex: silderIndex ?? this.silderIndex,
      productDetailModelObj:
          productDetailModelObj ?? this.productDetailModelObj,
    );
  }
}
