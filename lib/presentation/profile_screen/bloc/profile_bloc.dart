import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:fashon_bazar/presentation/profile_screen/models/profile_model.dart';
import 'package:fashon_bazar/data/models/me/get_me_resp.dart';
import 'dart:async';
import 'package:fashon_bazar/data/repository/repository.dart';
part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc(ProfileState initialState) : super(initialState) {
    on<ProfileInitialEvent>(_onInitialize);
    on<FetchMeEvent>(_callFetchMe);
  }

  final _repository = Repository();

  var getMeResp = GetMeResp();

  _onInitialize(
    ProfileInitialEvent event,
    Emitter<ProfileState> emit,
  ) async {
    add(
      FetchMeEvent(),
    );
  }

  FutureOr<void> _callFetchMe(
    FetchMeEvent event,
    Emitter<ProfileState> emit,
  ) async {
    await _repository.fetchMe(
      headers: {
        'Content-Type': 'application/json',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYxNmZiNzBhZWJiM2RiYjVlYmVkYTBmMiIsInVzZXJuYW1lIjoiT3Jpb24xNyIsImlhdCI6MTY3NzgxOTg3MH0.uDqLLt9IUCaUjLkbw4y_7A6OGS6NX2irkXdJ3-2Ebbs',
      },
    ).then((value) async {
      getMeResp = value;
      _onFetchMeSuccess(value, emit);
    }).onError((error, stackTrace) {
      //implement error call
      _onFetchMeError();
    });
  }

  void _onFetchMeSuccess(
    GetMeResp resp,
    Emitter<ProfileState> emit,
  ) {
    emit(
      state.copyWith(
        profileModelObj: state.profileModelObj?.copyWith(
          usernameTxt: resp.data!.username!.toString(),
          emailOneTxt: resp.data!.email!.toString(),
          nameTxt: resp.data!.name!.toString(),
        ),
      ),
    );
  }

  void _onFetchMeError() {
    //implement error method body...
  }
}
