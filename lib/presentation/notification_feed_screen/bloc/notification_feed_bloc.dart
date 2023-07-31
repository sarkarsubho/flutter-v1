import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listnewproduct_item_model.dart';
import 'package:fashon_bazar/presentation/notification_feed_screen/models/notification_feed_model.dart';
part 'notification_feed_event.dart';
part 'notification_feed_state.dart';

class NotificationFeedBloc
    extends Bloc<NotificationFeedEvent, NotificationFeedState> {
  NotificationFeedBloc(NotificationFeedState initialState)
      : super(initialState) {
    on<NotificationFeedInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NotificationFeedInitialEvent event,
    Emitter<NotificationFeedState> emit,
  ) async {
    emit(state.copyWith(
        notificationFeedModelObj: state.notificationFeedModelObj
            ?.copyWith(listnewproductItemList: fillListnewproductItemList())));
  }

  List<ListnewproductItemModel> fillListnewproductItemList() {
    return List.generate(3, (index) => ListnewproductItemModel());
  }
}
