// ignore_for_file: must_be_immutable

part of 'add_card_bloc.dart';

class AddCardState extends Equatable {
  AddCardState({
    this.entercardnumberOneController,
    this.expirationdateOneController,
    this.securitycodeOneController,
    this.entercardnumberThreeController,
    this.addCardModelObj,
  });

  TextEditingController? entercardnumberOneController;

  TextEditingController? expirationdateOneController;

  TextEditingController? securitycodeOneController;

  TextEditingController? entercardnumberThreeController;

  AddCardModel? addCardModelObj;

  @override
  List<Object?> get props => [
        entercardnumberOneController,
        expirationdateOneController,
        securitycodeOneController,
        entercardnumberThreeController,
        addCardModelObj,
      ];
  AddCardState copyWith({
    TextEditingController? entercardnumberOneController,
    TextEditingController? expirationdateOneController,
    TextEditingController? securitycodeOneController,
    TextEditingController? entercardnumberThreeController,
    AddCardModel? addCardModelObj,
  }) {
    return AddCardState(
      entercardnumberOneController:
          entercardnumberOneController ?? this.entercardnumberOneController,
      expirationdateOneController:
          expirationdateOneController ?? this.expirationdateOneController,
      securitycodeOneController:
          securitycodeOneController ?? this.securitycodeOneController,
      entercardnumberThreeController:
          entercardnumberThreeController ?? this.entercardnumberThreeController,
      addCardModelObj: addCardModelObj ?? this.addCardModelObj,
    );
  }
}
