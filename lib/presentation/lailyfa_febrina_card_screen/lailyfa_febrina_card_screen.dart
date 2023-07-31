import 'bloc/lailyfa_febrina_card_bloc.dart';
import 'models/lailyfa_febrina_card_model.dart';
import 'package:fashon_bazar/core/app_export.dart';
import 'package:fashon_bazar/widgets/app_bar/appbar_image.dart';
import 'package:fashon_bazar/widgets/app_bar/appbar_title.dart';
import 'package:fashon_bazar/widgets/app_bar/custom_app_bar.dart';
import 'package:fashon_bazar/widgets/custom_button.dart';
import 'package:fashon_bazar/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class LailyfaFebrinaCardScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<LailyfaFebrinaCardBloc>(
        create: (context) => LailyfaFebrinaCardBloc(LailyfaFebrinaCardState(
            lailyfaFebrinaCardModelObj: LailyfaFebrinaCardModel()))
          ..add(LailyfaFebrinaCardInitialEvent()),
        child: LailyfaFebrinaCardScreen());
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
                    height: getVerticalSize(26),
                    width: getHorizontalSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 14, bottom: 15),
                    onTap: () {
                      onTapArrowleft23(context);
                    }),
                title: AppbarTitle(
                    text: "msg_lailyfa_febrina".tr,
                    margin: getMargin(left: 12))),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 14, top: 19, right: 14, bottom: 19),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              margin: getMargin(left: 2),
                              padding: getPadding(
                                  left: 21, top: 23, right: 21, bottom: 23),
                              decoration: AppDecoration.fillLightblueA200
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder5),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgVolume,
                                        height: getVerticalSize(22),
                                        width: getHorizontalSize(36),
                                        margin: getMargin(left: 3)),
                                    Padding(
                                        padding: getPadding(top: 30),
                                        child: Text("msg_6326_9124".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtPoppinsBold24
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.5)))),
                                    Padding(
                                        padding: getPadding(top: 17),
                                        child: Row(children: [
                                          Padding(
                                              padding: getPadding(top: 2),
                                              child: Text("lbl_card_holder".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsRegular10WhiteA70087
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.5)))),
                                          Padding(
                                              padding: getPadding(
                                                  left: 37, bottom: 2),
                                              child: Text("lbl_card_save".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsRegular10WhiteA70087
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.5))))
                                        ])),
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Row(children: [
                                          Padding(
                                              padding: getPadding(top: 3),
                                              child: Text(
                                                  "lbl_lailyfa_febrina".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsBold10WhiteA700
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.5)))),
                                          Padding(
                                              padding: getPadding(
                                                  left: 32, bottom: 3),
                                              child: Text("lbl_06_24".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsBold10WhiteA700
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.5))))
                                        ]))
                                  ]))),
                      Padding(
                          padding: getPadding(left: 4, top: 23),
                          child: Text("lbl_card_number".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold14Indigo900
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.5)))),
                      BlocSelector<LailyfaFebrinaCardBloc,
                              LailyfaFebrinaCardState, TextEditingController?>(
                          selector: (state) => state.cardnumberOneController,
                          builder: (context, cardnumberOneController) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: cardnumberOneController,
                                hintText: "msg_1231_2312_3".tr,
                                margin: getMargin(left: 4, top: 12),
                                padding: TextFormFieldPadding.PaddingT17_1,
                                fontStyle: TextFormFieldFontStyle
                                    .PoppinsSemiBold12Bluegray300);
                          }),
                      Padding(
                          padding: getPadding(left: 4, top: 24),
                          child: Text("lbl_expiration_date".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold14Indigo900
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.5)))),
                      BlocSelector<LailyfaFebrinaCardBloc,
                              LailyfaFebrinaCardState, TextEditingController?>(
                          selector: (state) =>
                              state.expirationdateOneController,
                          builder: (context, expirationdateOneController) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: expirationdateOneController,
                                hintText: "lbl_12_12".tr,
                                margin: getMargin(left: 4, top: 11),
                                padding: TextFormFieldPadding.PaddingT17_1,
                                fontStyle: TextFormFieldFontStyle
                                    .PoppinsSemiBold12Bluegray300);
                          }),
                      Padding(
                          padding: getPadding(left: 2, top: 29),
                          child: Text("lbl_security_code".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold14Indigo900
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.5)))),
                      BlocSelector<LailyfaFebrinaCardBloc,
                              LailyfaFebrinaCardState, TextEditingController?>(
                          selector: (state) => state.zipcodeController,
                          builder: (context, zipcodeController) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: zipcodeController,
                                hintText: "lbl_1219".tr,
                                margin: getMargin(left: 2, top: 11),
                                padding: TextFormFieldPadding.PaddingT17_1,
                                fontStyle: TextFormFieldFontStyle
                                    .PoppinsSemiBold12Bluegray300);
                          }),
                      Padding(
                          padding: getPadding(left: 4, top: 23),
                          child: Text("lbl_card_holder2".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold14Indigo900
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.5)))),
                      BlocSelector<LailyfaFebrinaCardBloc,
                              LailyfaFebrinaCardState, TextEditingController?>(
                          selector: (state) => state.cardholdernameController,
                          builder: (context, cardholdernameController) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: cardholdernameController,
                                hintText: "lbl_lailyfa_febrina".tr,
                                margin: getMargin(left: 4, top: 12, bottom: 5),
                                padding: TextFormFieldPadding.PaddingT17_1,
                                fontStyle: TextFormFieldFontStyle
                                    .PoppinsSemiBold12Bluegray300,
                                textInputAction: TextInputAction.done);
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
    NavigatorService.pushNamed(
      AppRoutes.creditCardAndDebitScreen,
    );
  }

  onTapArrowleft23(BuildContext context) {
    NavigatorService.goBack();
  }
}
