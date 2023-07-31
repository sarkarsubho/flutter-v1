// ignore_for_file: must_be_immutable

part of 'offer_screen_one_bloc.dart';

class OfferScreenOneState extends Equatable {
  OfferScreenOneState({this.offerScreenOneModelObj});

  OfferScreenOneModel? offerScreenOneModelObj;

  @override
  List<Object?> get props => [
        offerScreenOneModelObj,
      ];
  OfferScreenOneState copyWith({OfferScreenOneModel? offerScreenOneModelObj}) {
    return OfferScreenOneState(
      offerScreenOneModelObj:
          offerScreenOneModelObj ?? this.offerScreenOneModelObj,
    );
  }
}
