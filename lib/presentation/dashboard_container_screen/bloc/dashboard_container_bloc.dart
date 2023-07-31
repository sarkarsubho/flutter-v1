import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:fashon_bazar/widgets/custom_bottom_bar.dart';
import 'package:fashon_bazar/presentation/dashboard_container_screen/models/dashboard_container_model.dart';
part 'dashboard_container_event.dart';
part 'dashboard_container_state.dart';

class DashboardContainerBloc
    extends Bloc<DashboardContainerEvent, DashboardContainerState> {
  DashboardContainerBloc(DashboardContainerState initialState)
      : super(initialState) {
    on<DashboardContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DashboardContainerInitialEvent event,
    Emitter<DashboardContainerState> emit,
  ) async {}
}
