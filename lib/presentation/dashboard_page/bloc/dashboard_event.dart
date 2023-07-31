// ignore_for_file: must_be_immutable

part of 'dashboard_bloc.dart';

@immutable
abstract class DashboardEvent extends Equatable {}

class DashboardInitialEvent extends DashboardEvent {
  @override
  List<Object?> get props => [];
}
