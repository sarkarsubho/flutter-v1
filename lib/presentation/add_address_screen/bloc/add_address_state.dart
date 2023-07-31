// ignore_for_file: must_be_immutable

part of 'add_address_bloc.dart';

class AddAddressState extends Equatable {
  AddAddressState({
    this.oldpasswordController,
    this.oldpasswordOneController,
    this.oldpasswordTwoController,
    this.oldpasswordThreeController,
    this.oldpasswordFourController,
    this.oldpasswordFiveController,
    this.oldpasswordSixController,
    this.oldpasswordSevenController,
    this.oldpasswordEightController,
    this.addAddressModelObj,
  });

  TextEditingController? oldpasswordController;

  TextEditingController? oldpasswordOneController;

  TextEditingController? oldpasswordTwoController;

  TextEditingController? oldpasswordThreeController;

  TextEditingController? oldpasswordFourController;

  TextEditingController? oldpasswordFiveController;

  TextEditingController? oldpasswordSixController;

  TextEditingController? oldpasswordSevenController;

  TextEditingController? oldpasswordEightController;

  AddAddressModel? addAddressModelObj;

  @override
  List<Object?> get props => [
        oldpasswordController,
        oldpasswordOneController,
        oldpasswordTwoController,
        oldpasswordThreeController,
        oldpasswordFourController,
        oldpasswordFiveController,
        oldpasswordSixController,
        oldpasswordSevenController,
        oldpasswordEightController,
        addAddressModelObj,
      ];
  AddAddressState copyWith({
    TextEditingController? oldpasswordController,
    TextEditingController? oldpasswordOneController,
    TextEditingController? oldpasswordTwoController,
    TextEditingController? oldpasswordThreeController,
    TextEditingController? oldpasswordFourController,
    TextEditingController? oldpasswordFiveController,
    TextEditingController? oldpasswordSixController,
    TextEditingController? oldpasswordSevenController,
    TextEditingController? oldpasswordEightController,
    AddAddressModel? addAddressModelObj,
  }) {
    return AddAddressState(
      oldpasswordController:
          oldpasswordController ?? this.oldpasswordController,
      oldpasswordOneController:
          oldpasswordOneController ?? this.oldpasswordOneController,
      oldpasswordTwoController:
          oldpasswordTwoController ?? this.oldpasswordTwoController,
      oldpasswordThreeController:
          oldpasswordThreeController ?? this.oldpasswordThreeController,
      oldpasswordFourController:
          oldpasswordFourController ?? this.oldpasswordFourController,
      oldpasswordFiveController:
          oldpasswordFiveController ?? this.oldpasswordFiveController,
      oldpasswordSixController:
          oldpasswordSixController ?? this.oldpasswordSixController,
      oldpasswordSevenController:
          oldpasswordSevenController ?? this.oldpasswordSevenController,
      oldpasswordEightController:
          oldpasswordEightController ?? this.oldpasswordEightController,
      addAddressModelObj: addAddressModelObj ?? this.addAddressModelObj,
    );
  }
}
