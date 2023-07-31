import 'package:equatable/equatable.dart';
import 'offer_screen_item_model.dart';

// ignore: must_be_immutable
class OfferModel extends Equatable {
  OfferModel({this.offerScreenItemList = const []});

  List<OfferScreenItemModel> offerScreenItemList;

  OfferModel copyWith({List<OfferScreenItemModel>? offerScreenItemList}) {
    return OfferModel(
      offerScreenItemList: offerScreenItemList ?? this.offerScreenItemList,
    );
  }

  @override
  List<Object?> get props => [offerScreenItemList];
}
