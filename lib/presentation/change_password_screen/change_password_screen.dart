import 'bloc/change_password_bloc.dart';
import 'models/change_password_model.dart';
import 'package:fashon_bazar/core/app_export.dart';
import 'package:fashon_bazar/widgets/app_bar/appbar_image.dart';
import 'package:fashon_bazar/widgets/app_bar/appbar_title.dart';
import 'package:fashon_bazar/widgets/app_bar/custom_app_bar.dart';
import 'package:fashon_bazar/widgets/custom_button.dart';
import 'package:fashon_bazar/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ChangePasswordScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<ChangePasswordBloc>(
        create: (context) => ChangePasswordBloc(
            ChangePasswordState(changePasswordModelObj: ChangePasswordModel()))
          ..add(ChangePasswordInitialEvent()),
        child: ChangePasswordScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(56),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 14, bottom: 17),
                    onTap: () {
                      onTapArrowleft15(context);
                    }),
                title: AppbarTitle(
                    text: "lbl_change_password".tr,
                    margin: getMargin(left: 12))),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 26, right: 16, bottom: 26),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("lbl_old_password".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsBold14Indigo900
                              .copyWith(letterSpacing: getHorizontalSize(0.5))),
                      BlocSelector<ChangePasswordBloc, ChangePasswordState,
                              TextEditingController?>(
                          selector: (state) => state.oldpasswordOneController,
                          builder: (context, oldpasswordOneController) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: oldpasswordOneController,
                                hintText: "msg".tr,
                                margin: getMargin(top: 12),
                                variant: TextFormFieldVariant.OutlineBlue50_1,
                                padding: TextFormFieldPadding.PaddingT14,
                                fontStyle: TextFormFieldFontStyle
                                    .PoppinsBold12Bluegray300,
                                prefix: Container(
                                    margin: getMargin(
                                        left: 16,
                                        top: 12,
                                        right: 10,
                                        bottom: 12),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgLock)),
                                prefixConstraints: BoxConstraints(
                                    maxHeight: getVerticalSize(48)));
                          }),
                      Padding(
                          padding: getPadding(top: 23),
                          child: Text("lbl_new_password".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold14Indigo900
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.5)))),
                      BlocSelector<ChangePasswordBloc, ChangePasswordState,
                              TextEditingController?>(
                          selector: (state) => state.newpasswordOneController,
                          builder: (context, newpasswordOneController) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: newpasswordOneController,
                                hintText: "msg".tr,
                                margin: getMargin(top: 12),
                                variant: TextFormFieldVariant.OutlineBlue50_1,
                                padding: TextFormFieldPadding.PaddingT14,
                                fontStyle: TextFormFieldFontStyle
                                    .PoppinsBold12Bluegray300,
                                prefix: Container(
                                    margin: getMargin(
                                        left: 16,
                                        top: 12,
                                        right: 10,
                                        bottom: 12),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgLock)),
                                prefixConstraints: BoxConstraints(
                                    maxHeight: getVerticalSize(48)));
                          }),
                      Padding(
                          padding: getPadding(top: 24),
                          child: Text("msg_new_password_ag".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold14Indigo900
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.5)))),
                      BlocSelector<ChangePasswordBloc, ChangePasswordState,
                              TextEditingController?>(
                          selector: (state) =>
                              state.newpasswordagaiTwoController,
                          builder: (context, newpasswordagaiTwoController) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: newpasswordagaiTwoController,
                                hintText: "msg".tr,
                                margin: getMargin(top: 11, bottom: 5),
                                variant: TextFormFieldVariant.OutlineBlue50_1,
                                padding: TextFormFieldPadding.PaddingT14,
                                fontStyle: TextFormFieldFontStyle
                                    .PoppinsBold12Bluegray300,
                                textInputAction: TextInputAction.done,
                                prefix: Container(
                                    margin: getMargin(
                                        left: 16,
                                        top: 12,
                                        right: 10,
                                        bottom: 12),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgLock)),
                                prefixConstraints: BoxConstraints(
                                    maxHeight: getVerticalSize(48)));
                          })
                    ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(57),
                text: "lbl_save".tr,
                margin: getMargin(left: 16, right: 16, bottom: 50),
                onTap: () {
                  onTapSave(context);
                })));
  }

  onTapSave(BuildContext context) {
    NavigatorService.popAndPushNamed(
      AppRoutes.loginScreen,
    );
  }

  onTapArrowleft15(BuildContext context) {
    NavigatorService.goBack();
  }
}
