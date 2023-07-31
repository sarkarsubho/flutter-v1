import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/explore_item_model.dart';
import '../models/explore1_item_model.dart';
import 'package:fashon_bazar/presentation/explore_page/models/explore_model.dart';
part 'explore_event.dart';
part 'explore_state.dart';

class ExploreBloc extends Bloc<ExploreEvent, ExploreState> {
  ExploreBloc(ExploreState initialState) : super(initialState) {
    on<ExploreInitialEvent>(_onInitialize);
  }

  List<ExploreItemModel> fillExploreItemList() {
    return List.generate(6, (index) => ExploreItemModel());
  }

  List<Explore1ItemModel> fillExplore1ItemList() {
    return List.generate(2, (index) => Explore1ItemModel());
  }

  _onInitialize(
    ExploreInitialEvent event,
    Emitter<ExploreState> emit,
  ) async {
    emit(state.copyWith(searchController: TextEditingController()));
    emit(state.copyWith(
        exploreModelObj: state.exploreModelObj?.copyWith(
            exploreItemList: fillExploreItemList(),
            explore1ItemList: fillExplore1ItemList())));
  }
}
