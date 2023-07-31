import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/gridnikeairmaxreact_item_model.dart';
import 'package:fashon_bazar/presentation/favorite_product_screen/models/favorite_product_model.dart';
part 'favorite_product_event.dart';
part 'favorite_product_state.dart';

class FavoriteProductBloc
    extends Bloc<FavoriteProductEvent, FavoriteProductState> {
  FavoriteProductBloc(FavoriteProductState initialState) : super(initialState) {
    on<FavoriteProductInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FavoriteProductInitialEvent event,
    Emitter<FavoriteProductState> emit,
  ) async {
    emit(state.copyWith(
        favoriteProductModelObj: state.favoriteProductModelObj?.copyWith(
            gridnikeairmaxreactItemList: fillGridnikeairmaxreactItemList())));
  }

  List<GridnikeairmaxreactItemModel> fillGridnikeairmaxreactItemList() {
    return List.generate(4, (index) => GridnikeairmaxreactItemModel());
  }
}
