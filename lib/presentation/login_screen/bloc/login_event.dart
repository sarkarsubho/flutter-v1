// ignore_for_file: must_be_immutable

part of 'login_bloc.dart';

@immutable
abstract class LoginEvent extends Equatable {}

class LoginInitialEvent extends LoginEvent {
  @override
  List<Object?> get props => [];
}

class CreateLoginEvent extends LoginEvent {
  CreateLoginEvent({
    required this.onCreateLoginEventSuccess,
    required this.onCreateLoginEventError,
  });

  Function onCreateLoginEventSuccess;

  Function onCreateLoginEventError;

  @override
  List<Object?> get props => [
        onCreateLoginEventSuccess,
        onCreateLoginEventError,
      ];
}

class GoogleAuthEvent extends LoginEvent {
  GoogleAuthEvent();

  @override
  List<Object?> get props => [];
}

class FacebookAuthEvent extends LoginEvent {
  FacebookAuthEvent();

  @override
  List<Object?> get props => [];
}
