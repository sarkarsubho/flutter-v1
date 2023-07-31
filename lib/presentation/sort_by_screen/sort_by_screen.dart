import 'bloc/sort_by_bloc.dart';
import 'models/sort_by_model.dart';
import 'package:fashon_bazar/core/app_export.dart';
import 'package:fashon_bazar/widgets/app_bar/appbar_image.dart';
import 'package:fashon_bazar/widgets/app_bar/appbar_title.dart';
import 'package:fashon_bazar/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class SortByScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<SortByBloc>(
        create: (context) =>
            SortByBloc(SortByState(sortByModelObj: SortByModel()))
              ..add(SortByInitialEvent()),
        child: SortByScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SortByBloc, SortByState>(builder: (context, state) {
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
                        onTapArrowleft10(context);
                      }),
                  title: AppbarTitle(
                      text: "lbl_sort_by".tr, margin: getMargin(left: 12))),
              body: Container(
                  width: double.maxFinite,
                  padding: getPadding(top: 10, bottom: 10),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                                width: double.maxFinite,
                                padding: getPadding(
                                    left: 16, top: 17, right: 16, bottom: 17),
                                decoration: AppDecoration.txtFillWhiteA700,
                                child: Text("lbl_best_match".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsBold12.copyWith(
                                        letterSpacing:
                                            getHorizontalSize(0.5))))),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: GestureDetector(
                                onTap: () {
                                  onTapTxtTimeendingsooneOne(context);
                                },
                                child: Container(
                                    width: double.maxFinite,
                                    padding: getPadding(
                                        left: 16,
                                        top: 17,
                                        right: 16,
                                        bottom: 17),
                                    decoration: AppDecoration.txtFillBlue50,
                                    child: Text("msg_time_ending_so".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsBold12Indigo900
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.5)))))),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                                width: double.maxFinite,
                                padding: getPadding(
                                    left: 16, top: 17, right: 16, bottom: 17),
                                decoration: AppDecoration.txtFillWhiteA700,
                                child: Text("msg_time_newly_lis".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsBold12Indigo900
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.5))))),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                                width: double.maxFinite,
                                padding: getPadding(
                                    left: 16, top: 17, right: 16, bottom: 17),
                                decoration: AppDecoration.txtFillWhiteA700,
                                child: Text("msg_price_shippin".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsBold12Indigo900
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.5))))),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                                width: double.maxFinite,
                                padding: getPadding(
                                    left: 16, top: 17, right: 16, bottom: 17),
                                decoration: AppDecoration.txtFillWhiteA700,
                                child: Text("msg_price_shippin2".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsBold12Indigo900
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.5))))),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                                width: double.maxFinite,
                                margin: getMargin(bottom: 5),
                                padding: getPadding(
                                    left: 16, top: 17, right: 16, bottom: 17),
                                decoration: AppDecoration.txtFillWhiteA700,
                                child: Text("msg_distance_neare".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsBold12Indigo900
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.5)))))
                      ]))));
    });
  }

  onTapTxtTimeendingsooneOne(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.offerScreen,
    );
  }

  onTapArrowleft10(BuildContext context) {
    NavigatorService.goBack();
  }
}
