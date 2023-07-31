// ignore_for_file: must_be_immutable

part of 'lailyfa_febrina_card_bloc.dart';

@immutable
abstract class LailyfaFebrinaCardEvent extends Equatable {}

class LailyfaFebrinaCardInitialEvent extends LailyfaFebrinaCardEvent {
  @override
  List<Object?> get props => [];
}
