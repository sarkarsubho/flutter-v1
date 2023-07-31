import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:fashon_bazar/presentation/login_screen/models/login_model.dart';
import 'package:fashon_bazar/data/models/login/post_login_resp.dart';
import 'package:fashon_bazar/data/models/login/post_login_req.dart';
import 'dart:async';
import 'package:fashon_bazar/data/repository/repository.dart';
part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(LoginState initialState) : super(initialState) {
    on<LoginInitialEvent>(_onInitialize);
    on<CreateLoginEvent>(_callCreateLogin);
  }

  final _repository = Repository();

  var postLoginResp = PostLoginResp();

  _onInitialize(
    LoginInitialEvent event,
    Emitter<LoginState> emit,
  ) async {
    emit(state.copyWith(
        emailController: TextEditingController(),
        passwordController: TextEditingController()));
  }

  FutureOr<void> _callCreateLogin(
    CreateLoginEvent event,
    Emitter<LoginState> emit,
  ) async {
    var postLoginReq = PostLoginReq(
      username: state.emailController?.text,
      password: state.passwordController?.text,
    );
    await _repository.createLogin(
      headers: {
        'Content-type': 'application/json',
      },
      requestData: postLoginReq.toJson(),
    ).then((value) async {
      postLoginResp = value;
      _onCreateLoginSuccess(value, emit);
      event.onCreateLoginEventSuccess.call();
    }).onError((error, stackTrace) {
      //implement error call
      _onCreateLoginError();
      event.onCreateLoginEventError.call();
    });
  }

  void _onCreateLoginSuccess(
    PostLoginResp resp,
    Emitter<LoginState> emit,
  ) {
    PrefUtils().setToken(resp.data!.token!.toString());
    emit(
      state.copyWith(
        loginModelObj: state.loginModelObj?.copyWith(),
      ),
    );
  }

  void _onCreateLoginError() {
    //implement error method body...
  }
}
