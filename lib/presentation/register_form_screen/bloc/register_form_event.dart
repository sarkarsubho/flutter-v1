// ignore_for_file: must_be_immutable

part of 'register_form_bloc.dart';

@immutable
abstract class RegisterFormEvent extends Equatable {}

class RegisterFormInitialEvent extends RegisterFormEvent {
  @override
  List<Object?> get props => [];
}

class CreateRegisterEvent extends RegisterFormEvent {
  CreateRegisterEvent({
    required this.onCreateRegisterEventSuccess,
    required this.onCreateRegisterEventError,
  });

  Function onCreateRegisterEventSuccess;

  Function onCreateRegisterEventError;

  @override
  List<Object?> get props => [
        onCreateRegisterEventSuccess,
        onCreateRegisterEventError,
      ];
}
