import 'bloc/add_address_bloc.dart';
import 'models/add_address_model.dart';
import 'package:fashon_bazar/core/app_export.dart';
import 'package:fashon_bazar/widgets/app_bar/appbar_image.dart';
import 'package:fashon_bazar/widgets/app_bar/appbar_title.dart';
import 'package:fashon_bazar/widgets/app_bar/custom_app_bar.dart';
import 'package:fashon_bazar/widgets/custom_button.dart';
import 'package:fashon_bazar/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class AddAddressScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<AddAddressBloc>(
        create: (context) => AddAddressBloc(
            AddAddressState(addAddressModelObj: AddAddressModel()))
          ..add(AddAddressInitialEvent()),
        child: AddAddressScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(24),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16),
                    onTap: () {
                      onTapArrowleft18(context);
                    }),
                title: AppbarTitle(
                    text: "lbl_add_address".tr, margin: getMargin(left: 12))),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding:
                            getPadding(left: 16, top: 45, right: 16, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("msg_country_or_regi".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsBold14Indigo900
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.5))),
                              BlocSelector<AddAddressBloc, AddAddressState,
                                      TextEditingController?>(
                                  selector: (state) =>
                                      state.oldpasswordController,
                                  builder: (context, oldpasswordController) {
                                    return CustomTextFormField(
                                        focusNode: FocusNode(),
                                        controller: oldpasswordController,
                                        hintText: "msg_enter_the_count".tr,
                                        margin: getMargin(top: 11),
                                        variant: TextFormFieldVariant
                                            .OutlineBlue50_1);
                                  }),
                              Padding(
                                  padding: getPadding(top: 22),
                                  child: Text("lbl_first_name".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14Indigo900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              BlocSelector<AddAddressBloc, AddAddressState,
                                      TextEditingController?>(
                                  selector: (state) =>
                                      state.oldpasswordOneController,
                                  builder: (context, oldpasswordOneController) {
                                    return CustomTextFormField(
                                        focusNode: FocusNode(),
                                        controller: oldpasswordOneController,
                                        hintText: "msg_enter_the_first".tr,
                                        margin: getMargin(top: 13),
                                        variant: TextFormFieldVariant
                                            .OutlineBlue50_1);
                                  }),
                              Padding(
                                  padding: getPadding(top: 22),
                                  child: Text("lbl_last_name".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14Indigo900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              BlocSelector<AddAddressBloc, AddAddressState,
                                      TextEditingController?>(
                                  selector: (state) =>
                                      state.oldpasswordTwoController,
                                  builder: (context, oldpasswordTwoController) {
                                    return CustomTextFormField(
                                        focusNode: FocusNode(),
                                        controller: oldpasswordTwoController,
                                        hintText: "msg_enter_the_last".tr,
                                        margin: getMargin(top: 12),
                                        variant: TextFormFieldVariant
                                            .OutlineBlue50_1);
                                  }),
                              Padding(
                                  padding: getPadding(top: 23),
                                  child: Text("lbl_street_address".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14Indigo900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              BlocSelector<AddAddressBloc, AddAddressState,
                                      TextEditingController?>(
                                  selector: (state) =>
                                      state.oldpasswordThreeController,
                                  builder:
                                      (context, oldpasswordThreeController) {
                                    return CustomTextFormField(
                                        focusNode: FocusNode(),
                                        controller: oldpasswordThreeController,
                                        hintText: "msg_enter_the_stree".tr,
                                        margin: getMargin(top: 12),
                                        variant: TextFormFieldVariant
                                            .OutlineBlue50_1);
                                  }),
                              Padding(
                                  padding: getPadding(top: 21),
                                  child: Text("msg_street_address".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14Indigo900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              BlocSelector<AddAddressBloc, AddAddressState,
                                      TextEditingController?>(
                                  selector: (state) =>
                                      state.oldpasswordFourController,
                                  builder:
                                      (context, oldpasswordFourController) {
                                    return CustomTextFormField(
                                        focusNode: FocusNode(),
                                        controller: oldpasswordFourController,
                                        hintText: "msg_enter_the_stree2".tr,
                                        margin: getMargin(top: 16),
                                        variant: TextFormFieldVariant
                                            .OutlineBlue50_1);
                                  }),
                              Padding(
                                  padding: getPadding(top: 22),
                                  child: Text("lbl_city".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14Indigo900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              BlocSelector<AddAddressBloc, AddAddressState,
                                      TextEditingController?>(
                                  selector: (state) =>
                                      state.oldpasswordFiveController,
                                  builder:
                                      (context, oldpasswordFiveController) {
                                    return CustomTextFormField(
                                        focusNode: FocusNode(),
                                        controller: oldpasswordFiveController,
                                        hintText: "lbl_enter_the_city".tr,
                                        margin: getMargin(top: 11),
                                        variant: TextFormFieldVariant
                                            .OutlineBlue50_1);
                                  }),
                              Padding(
                                  padding: getPadding(top: 23),
                                  child: Text("msg_state_province".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14Indigo900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              BlocSelector<AddAddressBloc, AddAddressState,
                                      TextEditingController?>(
                                  selector: (state) =>
                                      state.oldpasswordSixController,
                                  builder: (context, oldpasswordSixController) {
                                    return CustomTextFormField(
                                        focusNode: FocusNode(),
                                        controller: oldpasswordSixController,
                                        hintText: "msg_enter_the_state".tr,
                                        margin: getMargin(top: 12),
                                        variant: TextFormFieldVariant
                                            .OutlineBlue50_1);
                                  }),
                              Padding(
                                  padding: getPadding(top: 24),
                                  child: Text("lbl_zip_code".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14Indigo900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              BlocSelector<AddAddressBloc, AddAddressState,
                                      TextEditingController?>(
                                  selector: (state) =>
                                      state.oldpasswordSevenController,
                                  builder:
                                      (context, oldpasswordSevenController) {
                                    return CustomTextFormField(
                                        focusNode: FocusNode(),
                                        controller: oldpasswordSevenController,
                                        hintText: "msg_enter_the_zip_c".tr,
                                        margin: getMargin(top: 11),
                                        variant: TextFormFieldVariant
                                            .OutlineBlue50_1,
                                        textInputType: TextInputType.number);
                                  }),
                              Padding(
                                  padding: getPadding(top: 23),
                                  child: Text("lbl_phone_number".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14Indigo900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              BlocSelector<AddAddressBloc, AddAddressState,
                                      TextEditingController?>(
                                  selector: (state) =>
                                      state.oldpasswordEightController,
                                  builder:
                                      (context, oldpasswordEightController) {
                                    return CustomTextFormField(
                                        focusNode: FocusNode(),
                                        controller: oldpasswordEightController,
                                        hintText: "msg_enter_the_phone".tr,
                                        margin: getMargin(top: 12),
                                        variant: TextFormFieldVariant
                                            .OutlineBlue50_1,
                                        textInputAction: TextInputAction.done,
                                        textInputType: TextInputType.phone);
                                  })
                            ])))),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(57),
                text: "lbl_add_address".tr,
                margin: getMargin(left: 16, right: 16, bottom: 50),
                onTap: () {
                  onTapAddaddress(context);
                })));
  }

  onTapAddaddress(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.addressScreen,
    );
  }

  onTapArrowleft18(BuildContext context) {
    NavigatorService.goBack();
  }
}
