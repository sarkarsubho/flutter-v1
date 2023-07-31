import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/search_result_item_model.dart';
import 'package:fashon_bazar/presentation/search_result_screen/models/search_result_model.dart';
part 'search_result_event.dart';
part 'search_result_state.dart';

class SearchResultBloc extends Bloc<SearchResultEvent, SearchResultState> {
  SearchResultBloc(SearchResultState initialState) : super(initialState) {
    on<SearchResultInitialEvent>(_onInitialize);
  }

  List<SearchResultItemModel> fillSearchResultItemList() {
    return List.generate(6, (index) => SearchResultItemModel());
  }

  _onInitialize(
    SearchResultInitialEvent event,
    Emitter<SearchResultState> emit,
  ) async {
    emit(state.copyWith(searchController: TextEditingController()));
    emit(state.copyWith(
        searchResultModelObj: state.searchResultModelObj
            ?.copyWith(searchResultItemList: fillSearchResultItemList())));
  }
}
