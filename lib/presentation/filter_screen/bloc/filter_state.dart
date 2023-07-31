// ignore_for_file: must_be_immutable

part of 'filter_bloc.dart';

class FilterState extends Equatable {
  FilterState({
    this.priceController,
    this.priceOneController,
    this.filterModelObj,
  });

  TextEditingController? priceController;

  TextEditingController? priceOneController;

  FilterModel? filterModelObj;

  @override
  List<Object?> get props => [
        priceController,
        priceOneController,
        filterModelObj,
      ];
  FilterState copyWith({
    TextEditingController? priceController,
    TextEditingController? priceOneController,
    FilterModel? filterModelObj,
  }) {
    return FilterState(
      priceController: priceController ?? this.priceController,
      priceOneController: priceOneController ?? this.priceOneController,
      filterModelObj: filterModelObj ?? this.filterModelObj,
    );
  }
}
