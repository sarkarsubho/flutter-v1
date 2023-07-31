import 'bloc/add_card_bloc.dart';
import 'models/add_card_model.dart';
import 'package:fashon_bazar/core/app_export.dart';
import 'package:fashon_bazar/widgets/app_bar/appbar_image.dart';
import 'package:fashon_bazar/widgets/app_bar/appbar_title.dart';
import 'package:fashon_bazar/widgets/app_bar/custom_app_bar.dart';
import 'package:fashon_bazar/widgets/custom_button.dart';
import 'package:fashon_bazar/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class AddCardScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<AddCardBloc>(
        create: (context) =>
            AddCardBloc(AddCardState(addCardModelObj: AddCardModel()))
              ..add(AddCardInitialEvent()),
        child: AddCardScreen());
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
                    margin: getMargin(left: 16, top: 15, bottom: 16),
                    onTap: () {
                      onTapArrowleft22(context);
                    }),
                title: AppbarTitle(
                    text: "lbl_add_card".tr, margin: getMargin(left: 12))),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 27, right: 16, bottom: 27),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("lbl_card_number".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsBold14Indigo900
                              .copyWith(letterSpacing: getHorizontalSize(0.5))),
                      BlocSelector<AddCardBloc, AddCardState,
                              TextEditingController?>(
                          selector: (state) =>
                              state.entercardnumberOneController,
                          builder: (context, entercardnumberOneController) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: entercardnumberOneController,
                                hintText: "msg_enter_card_numb".tr,
                                margin: getMargin(top: 12),
                                textInputType: TextInputType.number);
                          }),
                      Padding(
                          padding: getPadding(top: 24),
                          child: Text("lbl_expiration_date".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold14Indigo900
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.5)))),
                      BlocSelector<AddCardBloc, AddCardState,
                              TextEditingController?>(
                          selector: (state) =>
                              state.expirationdateOneController,
                          builder: (context, expirationdateOneController) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: expirationdateOneController,
                                hintText: "lbl_expiration_date".tr,
                                margin: getMargin(top: 11),
                                padding: TextFormFieldPadding.PaddingT17_1);
                          }),
                      Padding(
                          padding: getPadding(top: 29),
                          child: Text("lbl_security_code".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold14Indigo900
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.5)))),
                      BlocSelector<AddCardBloc, AddCardState,
                              TextEditingController?>(
                          selector: (state) => state.securitycodeOneController,
                          builder: (context, securitycodeOneController) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: securitycodeOneController,
                                hintText: "lbl_security_code".tr,
                                margin: getMargin(top: 11),
                                padding: TextFormFieldPadding.PaddingT17_1);
                          }),
                      Padding(
                          padding: getPadding(top: 23),
                          child: Text("lbl_card_holder2".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold14Indigo900
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.5)))),
                      BlocSelector<AddCardBloc, AddCardState,
                              TextEditingController?>(
                          selector: (state) =>
                              state.entercardnumberThreeController,
                          builder: (context, entercardnumberThreeController) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: entercardnumberThreeController,
                                hintText: "msg_enter_card_numb".tr,
                                margin: getMargin(top: 12, bottom: 5),
                                textInputAction: TextInputAction.done,
                                textInputType: TextInputType.number);
                          })
                    ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(57),
                text: "lbl_add_card".tr,
                margin: getMargin(left: 16, right: 16, bottom: 50),
                onTap: () {
                  onTapAddcard(context);
                })));
  }

  onTapAddcard(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.creditCardAndDebitScreen,
    );
  }

  onTapArrowleft22(BuildContext context) {
    NavigatorService.goBack();
  }
}
