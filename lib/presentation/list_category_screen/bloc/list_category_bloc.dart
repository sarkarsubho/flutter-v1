import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:fashon_bazar/presentation/list_category_screen/models/list_category_model.dart';
part 'list_category_event.dart';
part 'list_category_state.dart';

class ListCategoryBloc extends Bloc<ListCategoryEvent, ListCategoryState> {
  ListCategoryBloc(ListCategoryState initialState) : super(initialState) {
    on<ListCategoryInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ListCategoryInitialEvent event,
    Emitter<ListCategoryState> emit,
  ) async {}
}
