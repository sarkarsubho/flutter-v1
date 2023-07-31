// ignore_for_file: must_be_immutable

part of 'dashboard_bloc.dart';

class DashboardState extends Equatable {
  DashboardState({
    this.silderIndex = 0,
    this.dashboardModelObj,
  });

  DashboardModel? dashboardModelObj;

  int silderIndex;

  @override
  List<Object?> get props => [
        silderIndex,
        dashboardModelObj,
      ];
  DashboardState copyWith({
    int? silderIndex,
    DashboardModel? dashboardModelObj,
  }) {
    return DashboardState(
      silderIndex: silderIndex ?? this.silderIndex,
      dashboardModelObj: dashboardModelObj ?? this.dashboardModelObj,
    );
  }
}
