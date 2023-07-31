// ignore_for_file: must_be_immutable

part of 'dashboard_container_bloc.dart';

class DashboardContainerState extends Equatable {
  DashboardContainerState({
    this.id,
    this.token,
    this.dashboardContainerModelObj,
  });

  DashboardContainerModel? dashboardContainerModelObj;

  var id;

  var token;

  @override
  List<Object?> get props => [
        id,
        token,
        dashboardContainerModelObj,
      ];
  DashboardContainerState copyWith({
    var id,
    var token,
    DashboardContainerModel? dashboardContainerModelObj,
  }) {
    return DashboardContainerState(
      id: id ?? this.id,
      token: token ?? this.token,
      dashboardContainerModelObj:
          dashboardContainerModelObj ?? this.dashboardContainerModelObj,
    );
  }
}
