import 'package:equatable/equatable.dart';
import 'slider_item_model.dart';
import 'sizes_item_model.dart';
import 'recomended_item_model.dart';

// ignore: must_be_immutable
class ProductDetailModel extends Equatable {
  ProductDetailModel(
      {this.sliderItemList = const [],
      this.sizesItemList = const [],
      this.recomendedItemList = const []});

  List<SliderItemModel> sliderItemList;

  List<SizesItemModel> sizesItemList;

  List<RecomendedItemModel> recomendedItemList;

  ProductDetailModel copyWith(
      {List<SliderItemModel>? sliderItemList,
      List<SizesItemModel>? sizesItemList,
      List<RecomendedItemModel>? recomendedItemList}) {
    return ProductDetailModel(
      sliderItemList: sliderItemList ?? this.sliderItemList,
      sizesItemList: sizesItemList ?? this.sizesItemList,
      recomendedItemList: recomendedItemList ?? this.recomendedItemList,
    );
  }

  @override
  List<Object?> get props =>
      [sliderItemList, sizesItemList, recomendedItemList];
}
