import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class ProfileModel extends Equatable {
  ProfileModel(
      {this.nameTxt = "", this.usernameTxt = "", this.emailOneTxt = ""});

  String nameTxt;

  String usernameTxt;

  String emailOneTxt;

  ProfileModel copyWith(
      {String? nameTxt, String? usernameTxt, String? emailOneTxt}) {
    return ProfileModel(
      nameTxt: nameTxt ?? this.nameTxt,
      usernameTxt: usernameTxt ?? this.usernameTxt,
      emailOneTxt: emailOneTxt ?? this.emailOneTxt,
    );
  }

  @override
  List<Object?> get props => [nameTxt, usernameTxt, emailOneTxt];
}
