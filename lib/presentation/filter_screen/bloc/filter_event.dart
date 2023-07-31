// ignore_for_file: must_be_immutable

part of 'filter_bloc.dart';

@immutable
abstract class FilterEvent extends Equatable {}

class FilterInitialEvent extends FilterEvent {
  @override
  List<Object?> get props => [];
}

///event for change ChipView selection
class UpdateChipViewEvent extends FilterEvent {
  UpdateChipViewEvent({
    required this.index,
    this.isSelected,
  });

  int index;

  bool? isSelected;

  @override
  List<Object?> get props => [
        index,
        isSelected,
      ];
}

///event for change ChipView selection
class UpdateChipView1Event extends FilterEvent {
  UpdateChipView1Event({
    required this.index,
    this.isSelected,
  });

  int index;

  bool? isSelected;

  @override
  List<Object?> get props => [
        index,
        isSelected,
      ];
}

///event for change ChipView selection
class UpdateChipView2Event extends FilterEvent {
  UpdateChipView2Event({
    required this.index,
    this.isSelected,
  });

  int index;

  bool? isSelected;

  @override
  List<Object?> get props => [
        index,
        isSelected,
      ];
}
