import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/notification_item_model.dart';
import 'package:fashon_bazar/presentation/notification_screen/models/notification_model.dart';
part 'notification_event.dart';
part 'notification_state.dart';

class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  NotificationBloc(NotificationState initialState) : super(initialState) {
    on<NotificationInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NotificationInitialEvent event,
    Emitter<NotificationState> emit,
  ) async {
    emit(state.copyWith(
        notificationModelObj: state.notificationModelObj
            ?.copyWith(notificationItemList: fillNotificationItemList())));
  }

  List<NotificationItemModel> fillNotificationItemList() {
    return List.generate(3, (index) => NotificationItemModel());
  }
}
