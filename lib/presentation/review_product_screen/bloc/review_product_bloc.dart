import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:fashon_bazar/presentation/review_product_screen/models/review_product_model.dart';
part 'review_product_event.dart';
part 'review_product_state.dart';

class ReviewProductBloc extends Bloc<ReviewProductEvent, ReviewProductState> {
  ReviewProductBloc(ReviewProductState initialState) : super(initialState) {
    on<ReviewProductInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ReviewProductInitialEvent event,
    Emitter<ReviewProductState> emit,
  ) async {}
}
