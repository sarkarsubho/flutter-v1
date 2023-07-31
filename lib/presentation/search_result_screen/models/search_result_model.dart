import 'package:equatable/equatable.dart';
import 'search_result_item_model.dart';

// ignore: must_be_immutable
class SearchResultModel extends Equatable {
  SearchResultModel({this.searchResultItemList = const []});

  List<SearchResultItemModel> searchResultItemList;

  SearchResultModel copyWith(
      {List<SearchResultItemModel>? searchResultItemList}) {
    return SearchResultModel(
      searchResultItemList: searchResultItemList ?? this.searchResultItemList,
    );
  }

  @override
  List<Object?> get props => [searchResultItemList];
}
