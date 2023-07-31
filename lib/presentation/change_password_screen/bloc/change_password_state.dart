// ignore_for_file: must_be_immutable

part of 'change_password_bloc.dart';

class ChangePasswordState extends Equatable {
  ChangePasswordState({
    this.oldpasswordOneController,
    this.newpasswordOneController,
    this.newpasswordagaiTwoController,
    this.changePasswordModelObj,
  });

  TextEditingController? oldpasswordOneController;

  TextEditingController? newpasswordOneController;

  TextEditingController? newpasswordagaiTwoController;

  ChangePasswordModel? changePasswordModelObj;

  @override
  List<Object?> get props => [
        oldpasswordOneController,
        newpasswordOneController,
        newpasswordagaiTwoController,
        changePasswordModelObj,
      ];
  ChangePasswordState copyWith({
    TextEditingController? oldpasswordOneController,
    TextEditingController? newpasswordOneController,
    TextEditingController? newpasswordagaiTwoController,
    ChangePasswordModel? changePasswordModelObj,
  }) {
    return ChangePasswordState(
      oldpasswordOneController:
          oldpasswordOneController ?? this.oldpasswordOneController,
      newpasswordOneController:
          newpasswordOneController ?? this.newpasswordOneController,
      newpasswordagaiTwoController:
          newpasswordagaiTwoController ?? this.newpasswordagaiTwoController,
      changePasswordModelObj:
          changePasswordModelObj ?? this.changePasswordModelObj,
    );
  }
}
