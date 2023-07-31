import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:fashon_bazar/presentation/register_form_screen/models/register_form_model.dart';
import 'package:fashon_bazar/data/models/register/post_register_resp.dart';
import 'package:fashon_bazar/data/models/register/post_register_req.dart';
import 'dart:async';
import 'package:fashon_bazar/data/repository/repository.dart';
import 'package:fashon_bazar/core/constants/role.dart';
part 'register_form_event.dart';
part 'register_form_state.dart';

class RegisterFormBloc extends Bloc<RegisterFormEvent, RegisterFormState> {
  RegisterFormBloc(RegisterFormState initialState) : super(initialState) {
    on<RegisterFormInitialEvent>(_onInitialize);
    on<CreateRegisterEvent>(_callCreateRegister);
  }

  final _repository = Repository();

  var postRegisterResp = PostRegisterResp();

  _onInitialize(
    RegisterFormInitialEvent event,
    Emitter<RegisterFormState> emit,
  ) async {
    emit(state.copyWith(
        fullnameController: TextEditingController(),
        youremailController: TextEditingController(),
        passwordController: TextEditingController(),
        passwordagainController: TextEditingController()));
  }

  FutureOr<void> _callCreateRegister(
    CreateRegisterEvent event,
    Emitter<RegisterFormState> emit,
  ) async {
    var postRegisterReq = PostRegisterReq(
      username: state.youremailController?.text,
      password: state.passwordController?.text,
      email: state.youremailController?.text,
      name: state.fullnameController?.text,
      role: Role.user,
    );
    await _repository.createRegister(
      headers: {
        'Content-type': 'application/json',
      },
      requestData: postRegisterReq.toJson(),
    ).then((value) async {
      postRegisterResp = value;
      _onCreateRegisterSuccess(value, emit);
      event.onCreateRegisterEventSuccess.call();
    }).onError((error, stackTrace) {
      //implement error call
      _onCreateRegisterError();
      event.onCreateRegisterEventError.call();
    });
  }

  void _onCreateRegisterSuccess(
    PostRegisterResp resp,
    Emitter<RegisterFormState> emit,
  ) {
    PrefUtils().setId(resp.data!.id!.toString());
    emit(
      state.copyWith(
        registerFormModelObj: state.registerFormModelObj?.copyWith(),
      ),
    );
  }

  void _onCreateRegisterError() {
    //implement error method body...
  }
}
