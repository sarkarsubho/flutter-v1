// ignore_for_file: must_be_immutable

part of 'search_result_one_bloc.dart';

class SearchResultOneState extends Equatable {
  SearchResultOneState({
    this.searchformController,
    this.searchResultOneModelObj,
  });

  TextEditingController? searchformController;

  SearchResultOneModel? searchResultOneModelObj;

  @override
  List<Object?> get props => [
        searchformController,
        searchResultOneModelObj,
      ];
  SearchResultOneState copyWith({
    TextEditingController? searchformController,
    SearchResultOneModel? searchResultOneModelObj,
  }) {
    return SearchResultOneState(
      searchformController: searchformController ?? this.searchformController,
      searchResultOneModelObj:
          searchResultOneModelObj ?? this.searchResultOneModelObj,
    );
  }
}
