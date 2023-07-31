import 'package:equatable/equatable.dart';
import 'explore_item_model.dart';
import 'explore1_item_model.dart';

// ignore: must_be_immutable
class ExploreModel extends Equatable {
  ExploreModel(
      {this.exploreItemList = const [], this.explore1ItemList = const []});

  List<ExploreItemModel> exploreItemList;

  List<Explore1ItemModel> explore1ItemList;

  ExploreModel copyWith(
      {List<ExploreItemModel>? exploreItemList,
      List<Explore1ItemModel>? explore1ItemList}) {
    return ExploreModel(
      exploreItemList: exploreItemList ?? this.exploreItemList,
      explore1ItemList: explore1ItemList ?? this.explore1ItemList,
    );
  }

  @override
  List<Object?> get props => [exploreItemList, explore1ItemList];
}
