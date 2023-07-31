// ignore_for_file: must_be_immutable

part of 'register_form_bloc.dart';

class RegisterFormState extends Equatable {
  RegisterFormState({
    this.fullnameController,
    this.youremailController,
    this.passwordController,
    this.passwordagainController,
    this.registerFormModelObj,
  });

  TextEditingController? fullnameController;

  TextEditingController? youremailController;

  TextEditingController? passwordController;

  TextEditingController? passwordagainController;

  RegisterFormModel? registerFormModelObj;

  @override
  List<Object?> get props => [
        fullnameController,
        youremailController,
        passwordController,
        passwordagainController,
        registerFormModelObj,
      ];
  RegisterFormState copyWith({
    TextEditingController? fullnameController,
    TextEditingController? youremailController,
    TextEditingController? passwordController,
    TextEditingController? passwordagainController,
    RegisterFormModel? registerFormModelObj,
  }) {
    return RegisterFormState(
      fullnameController: fullnameController ?? this.fullnameController,
      youremailController: youremailController ?? this.youremailController,
      passwordController: passwordController ?? this.passwordController,
      passwordagainController:
          passwordagainController ?? this.passwordagainController,
      registerFormModelObj: registerFormModelObj ?? this.registerFormModelObj,
    );
  }
}
