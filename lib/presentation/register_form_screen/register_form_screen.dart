import 'bloc/register_form_bloc.dart';
import 'models/register_form_model.dart';
import 'package:fashon_bazar/core/app_export.dart';
import 'package:fashon_bazar/widgets/custom_button.dart';
import 'package:fashon_bazar/widgets/custom_icon_button.dart';
import 'package:fashon_bazar/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class RegisterFormScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<RegisterFormBloc>(
        create: (context) => RegisterFormBloc(
            RegisterFormState(registerFormModelObj: RegisterFormModel()))
          ..add(RegisterFormInitialEvent()),
        child: RegisterFormScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, right: 16),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomIconButton(
                          height: 72,
                          width: 72,
                          variant: IconButtonVariant.FillLightblueA200,
                          shape: IconButtonShape.RoundedBorder16,
                          padding: IconButtonPadding.PaddingAll20,
                          child: CustomImageView(
                              svgPath: ImageConstant.imgCloseWhiteA700)),
                      Padding(
                          padding: getPadding(top: 16),
                          child: Text("msg_let_s_get_start".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold16.copyWith(
                                  letterSpacing: getHorizontalSize(0.5)))),
                      Padding(
                          padding: getPadding(top: 9),
                          child: Text("msg_create_an_new_a".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular12.copyWith(
                                  letterSpacing: getHorizontalSize(0.5)))),
                      BlocSelector<RegisterFormBloc, RegisterFormState,
                              TextEditingController?>(
                          selector: (state) => state.fullnameController,
                          builder: (context, fullnameController) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: fullnameController,
                                hintText: "lbl_full_name".tr,
                                margin: getMargin(top: 30),
                                padding: TextFormFieldPadding.PaddingT14,
                                prefix: Container(
                                    margin: getMargin(
                                        left: 16,
                                        top: 12,
                                        right: 10,
                                        bottom: 12),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgUser)),
                                prefixConstraints: BoxConstraints(
                                    maxHeight: getVerticalSize(48)));
                          }),
                      BlocSelector<RegisterFormBloc, RegisterFormState,
                              TextEditingController?>(
                          selector: (state) => state.youremailController,
                          builder: (context, youremailController) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: youremailController,
                                hintText: "lbl_your_email".tr,
                                margin: getMargin(top: 8),
                                padding: TextFormFieldPadding.PaddingT14,
                                textInputType: TextInputType.emailAddress,
                                prefix: Container(
                                    margin: getMargin(
                                        left: 16,
                                        top: 12,
                                        right: 10,
                                        bottom: 12),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgMail)),
                                prefixConstraints: BoxConstraints(
                                    maxHeight: getVerticalSize(48)));
                          }),
                      BlocSelector<RegisterFormBloc, RegisterFormState,
                              TextEditingController?>(
                          selector: (state) => state.passwordController,
                          builder: (context, passwordController) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: passwordController,
                                hintText: "lbl_password".tr,
                                margin: getMargin(top: 8),
                                padding: TextFormFieldPadding.PaddingT14,
                                textInputType: TextInputType.visiblePassword,
                                prefix: Container(
                                    margin: getMargin(
                                        left: 16,
                                        top: 12,
                                        right: 10,
                                        bottom: 12),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgLock)),
                                prefixConstraints: BoxConstraints(
                                    maxHeight: getVerticalSize(48)),
                                isObscureText: true);
                          }),
                      BlocSelector<RegisterFormBloc, RegisterFormState,
                              TextEditingController?>(
                          selector: (state) => state.passwordagainController,
                          builder: (context, passwordagainController) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: passwordagainController,
                                hintText: "lbl_password_again".tr,
                                margin: getMargin(top: 8),
                                padding: TextFormFieldPadding.PaddingT14,
                                textInputAction: TextInputAction.done,
                                textInputType: TextInputType.visiblePassword,
                                prefix: Container(
                                    margin: getMargin(
                                        left: 16,
                                        top: 12,
                                        right: 10,
                                        bottom: 12),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgLock)),
                                prefixConstraints: BoxConstraints(
                                    maxHeight: getVerticalSize(48)),
                                isObscureText: true);
                          }),
                      CustomButton(
                          height: getVerticalSize(57),
                          text: "lbl_sign_up".tr,
                          margin: getMargin(top: 20),
                          onTap: () {
                            onTapSignup(context);
                          }),
                      GestureDetector(
                          onTap: () {
                            onTapTxtHaveanaccount(context);
                          },
                          child: Padding(
                              padding: getPadding(top: 20, bottom: 5),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "msg_have_an_account2".tr,
                                        style: TextStyle(
                                            color: ColorConstant.blueGray300,
                                            fontSize: getFontSize(12),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400,
                                            letterSpacing:
                                                getHorizontalSize(0.5))),
                                    TextSpan(
                                        text: " ",
                                        style: TextStyle(
                                            color: ColorConstant.indigoA200,
                                            fontSize: getFontSize(12),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w700,
                                            letterSpacing:
                                                getHorizontalSize(0.5))),
                                    TextSpan(
                                        text: "lbl_sign_in".tr,
                                        style: TextStyle(
                                            color: ColorConstant.lightBlueA200,
                                            fontSize: getFontSize(12),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w700,
                                            letterSpacing:
                                                getHorizontalSize(0.5)))
                                  ]),
                                  textAlign: TextAlign.left)))
                    ]))));
  }

  onTapSignup(BuildContext context) {
    context.read<RegisterFormBloc>().add(
          CreateRegisterEvent(
            onCreateRegisterEventSuccess: () {
              _onCreateRegisterEventSuccess(context);
            },
            onCreateRegisterEventError: () {
              _onCreateRegisterEventError(context);
            },
          ),
        );
  }

  void _onCreateRegisterEventSuccess(BuildContext context) {
    NavigatorService.popAndPushNamed(AppRoutes.dashboardContainerScreen,
        arguments: {
          NavigationArgs.id:
              context.read<RegisterFormBloc>().postRegisterResp.data!.id!
        });
  }

  void _onCreateRegisterEventError(BuildContext context) {
    Fluttertoast.showToast(
      msg:
          context.read<RegisterFormBloc>().postRegisterResp.message!.toString(),
    );
  }

  onTapTxtHaveanaccount(BuildContext context) {
    NavigatorService.popAndPushNamed(
      AppRoutes.loginScreen,
    );
  }
}
