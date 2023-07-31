import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listoffer_item_model.dart';
import 'package:fashon_bazar/presentation/notification_offer_screen/models/notification_offer_model.dart';
part 'notification_offer_event.dart';
part 'notification_offer_state.dart';

class NotificationOfferBloc
    extends Bloc<NotificationOfferEvent, NotificationOfferState> {
  NotificationOfferBloc(NotificationOfferState initialState)
      : super(initialState) {
    on<NotificationOfferInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NotificationOfferInitialEvent event,
    Emitter<NotificationOfferState> emit,
  ) async {
    emit(state.copyWith(
        notificationOfferModelObj: state.notificationOfferModelObj
            ?.copyWith(listofferItemList: fillListofferItemList())));
  }

  List<ListofferItemModel> fillListofferItemList() {
    return List.generate(3, (index) => ListofferItemModel());
  }
}
