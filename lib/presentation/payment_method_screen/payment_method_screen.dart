import 'bloc/payment_method_bloc.dart';
import 'models/payment_method_model.dart';
import 'package:fashon_bazar/core/app_export.dart';
import 'package:fashon_bazar/widgets/app_bar/appbar_image.dart';
import 'package:fashon_bazar/widgets/app_bar/appbar_title.dart';
import 'package:fashon_bazar/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class PaymentMethodScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<PaymentMethodBloc>(
        create: (context) => PaymentMethodBloc(
            PaymentMethodState(paymentMethodModelObj: PaymentMethodModel()))
          ..add(PaymentMethodInitialEvent()),
        child: PaymentMethodScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PaymentMethodBloc, PaymentMethodState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.whiteA700,
              appBar: CustomAppBar(
                  height: getVerticalSize(67),
                  leadingWidth: 40,
                  leading: AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgArrowleft,
                      margin: getMargin(left: 16, top: 14, bottom: 17),
                      onTap: () {
                        onTapArrowleft12(context);
                      }),
                  title: AppbarTitle(
                      text: "lbl_payment".tr, margin: getMargin(left: 12))),
              body: Container(
                  width: double.maxFinite,
                  padding: getPadding(top: 10, bottom: 10),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GestureDetector(
                            onTap: () {
                              onTapRowmobile(context);
                            },
                            child: Container(
                                width: double.maxFinite,
                                padding: getPadding(all: 16),
                                decoration: AppDecoration.fillBlue50,
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                          svgPath: ImageConstant.imgMobile,
                                          height: getSize(24),
                                          width: getSize(24)),
                                      Padding(
                                          padding: getPadding(
                                              left: 16, top: 2, bottom: 3),
                                          child: Text("msg_credit_card_or".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsBold12Indigo900
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.5))))
                                    ]))),
                        Container(
                            width: double.maxFinite,
                            padding: getPadding(all: 16),
                            decoration: AppDecoration.fillWhiteA700,
                            child: Row(children: [
                              CustomImageView(
                                  svgPath: ImageConstant.imgPaypalicon,
                                  height: getSize(24),
                                  width: getSize(24)),
                              Padding(
                                  padding:
                                      getPadding(left: 16, top: 4, bottom: 1),
                                  child: Text("lbl_paypal".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold12Indigo900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5))))
                            ])),
                        Container(
                            width: double.maxFinite,
                            margin: getMargin(bottom: 5),
                            padding: getPadding(all: 16),
                            decoration: AppDecoration.fillWhiteA700,
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                      svgPath: ImageConstant.imgAirplane24x24,
                                      height: getSize(24),
                                      width: getSize(24)),
                                  Padding(
                                      padding: getPadding(
                                          left: 16, top: 2, bottom: 3),
                                      child: Text("lbl_bank_transfer".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtPoppinsBold12Indigo900
                                              .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(0.5))))
                                ]))
                      ]))));
    });
  }

  onTapRowmobile(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.chooseCreditOrDebitCardScreen,
    );
  }

  onTapArrowleft12(BuildContext context) {
    NavigatorService.goBack();
  }
}
