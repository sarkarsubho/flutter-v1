// ignore_for_file: must_be_immutable

part of 'lailyfa_febrina_card_bloc.dart';

class LailyfaFebrinaCardState extends Equatable {
  LailyfaFebrinaCardState({
    this.cardnumberOneController,
    this.expirationdateOneController,
    this.zipcodeController,
    this.cardholdernameController,
    this.lailyfaFebrinaCardModelObj,
  });

  TextEditingController? cardnumberOneController;

  TextEditingController? expirationdateOneController;

  TextEditingController? zipcodeController;

  TextEditingController? cardholdernameController;

  LailyfaFebrinaCardModel? lailyfaFebrinaCardModelObj;

  @override
  List<Object?> get props => [
        cardnumberOneController,
        expirationdateOneController,
        zipcodeController,
        cardholdernameController,
        lailyfaFebrinaCardModelObj,
      ];
  LailyfaFebrinaCardState copyWith({
    TextEditingController? cardnumberOneController,
    TextEditingController? expirationdateOneController,
    TextEditingController? zipcodeController,
    TextEditingController? cardholdernameController,
    LailyfaFebrinaCardModel? lailyfaFebrinaCardModelObj,
  }) {
    return LailyfaFebrinaCardState(
      cardnumberOneController:
          cardnumberOneController ?? this.cardnumberOneController,
      expirationdateOneController:
          expirationdateOneController ?? this.expirationdateOneController,
      zipcodeController: zipcodeController ?? this.zipcodeController,
      cardholdernameController:
          cardholdernameController ?? this.cardholdernameController,
      lailyfaFebrinaCardModelObj:
          lailyfaFebrinaCardModelObj ?? this.lailyfaFebrinaCardModelObj,
    );
  }
}
