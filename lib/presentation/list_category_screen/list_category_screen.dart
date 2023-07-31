import 'bloc/list_category_bloc.dart';
import 'models/list_category_model.dart';
import 'package:fashon_bazar/core/app_export.dart';
import 'package:fashon_bazar/widgets/app_bar/appbar_image.dart';
import 'package:fashon_bazar/widgets/app_bar/appbar_title.dart';
import 'package:fashon_bazar/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ListCategoryScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<ListCategoryBloc>(
        create: (context) => ListCategoryBloc(
            ListCategoryState(listCategoryModelObj: ListCategoryModel()))
          ..add(ListCategoryInitialEvent()),
        child: ListCategoryScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ListCategoryBloc, ListCategoryState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.whiteA700,
              appBar: CustomAppBar(
                  height: getVerticalSize(52),
                  leadingWidth: 40,
                  leading: AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgArrowleft,
                      margin: getMargin(left: 16, bottom: 2),
                      onTap: () {
                        onTapArrowleft9(context);
                      }),
                  title: AppbarTitle(
                      text: "lbl_category".tr, margin: getMargin(left: 12))),
              body: SizedBox(
                  width: size.width,
                  child: SingleChildScrollView(
                      child: Padding(
                          padding: getPadding(top: 25, bottom: 5),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    width: double.maxFinite,
                                    padding: getPadding(all: 16),
                                    decoration: AppDecoration.fillWhiteA700,
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgArrowleftLightBlueA200,
                                              height: getSize(24),
                                              width: getSize(24)),
                                          Padding(
                                              padding: getPadding(
                                                  left: 16, top: 2, bottom: 3),
                                              child: Text("lbl_shirt".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsBold12
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.5))))
                                        ])),
                                Container(
                                    width: double.maxFinite,
                                    padding: getPadding(all: 16),
                                    decoration: AppDecoration.fillBlue50,
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgComputer,
                                              height: getSize(24),
                                              width: getSize(24)),
                                          Padding(
                                              padding: getPadding(
                                                  left: 16, top: 2, bottom: 3),
                                              child: Text("lbl_bikini".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsBold12Indigo900
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.5))))
                                        ])),
                                Container(
                                    width: double.maxFinite,
                                    padding: getPadding(all: 16),
                                    decoration: AppDecoration.fillWhiteA700,
                                    child: Row(children: [
                                      CustomImageView(
                                          svgPath: ImageConstant.imgClock,
                                          height: getSize(24),
                                          width: getSize(24)),
                                      Padding(
                                          padding: getPadding(
                                              left: 16, top: 2, bottom: 3),
                                          child: Text("lbl_dress".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsBold12Indigo900
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.5))))
                                    ])),
                                Container(
                                    width: double.maxFinite,
                                    padding: getPadding(all: 16),
                                    decoration: AppDecoration.fillWhiteA700,
                                    child: Row(children: [
                                      CustomImageView(
                                          svgPath: ImageConstant.imgMail70x70,
                                          height: getSize(24),
                                          width: getSize(24)),
                                      Padding(
                                          padding: getPadding(
                                              left: 16, top: 3, bottom: 2),
                                          child: Text("lbl_work_equipment".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsBold12Indigo900
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.5))))
                                    ])),
                                Container(
                                    width: double.maxFinite,
                                    padding: getPadding(all: 16),
                                    decoration: AppDecoration.fillWhiteA700,
                                    child: Row(children: [
                                      CustomImageView(
                                          svgPath: ImageConstant.imgTrash70x70,
                                          height: getSize(24),
                                          width: getSize(24)),
                                      Padding(
                                          padding: getPadding(
                                              left: 16, top: 2, bottom: 3),
                                          child: Text("lbl_man_pants".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsBold12Indigo900
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.5))))
                                    ])),
                                GestureDetector(
                                    onTap: () {
                                      onTapManshoes(context);
                                    },
                                    child: Container(
                                        width: double.maxFinite,
                                        padding: getPadding(all: 16),
                                        decoration: AppDecoration.fillWhiteA700,
                                        child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgTicket,
                                                  height: getSize(24),
                                                  width: getSize(24)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 16,
                                                      top: 2,
                                                      bottom: 3),
                                                  child: Text(
                                                      "lbl_man_shoes".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
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
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              svgPath: ImageConstant.imgForward,
                                              height: getSize(24),
                                              width: getSize(24)),
                                          Padding(
                                              padding: getPadding(
                                                  left: 16, top: 2, bottom: 3),
                                              child: Text(
                                                  "lbl_man_underwear".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsBold12Indigo900
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.5))))
                                        ])),
                                Container(
                                    width: double.maxFinite,
                                    padding: getPadding(all: 16),
                                    decoration: AppDecoration.fillWhiteA700,
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgAirplane,
                                              height: getSize(24),
                                              width: getSize(24)),
                                          Padding(
                                              padding: getPadding(
                                                  left: 16, top: 2, bottom: 3),
                                              child: Text("lbl_man_t_shirt".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsBold12Indigo900
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.5))))
                                        ])),
                                Container(
                                    width: double.maxFinite,
                                    padding: getPadding(all: 16),
                                    decoration: AppDecoration.fillWhiteA700,
                                    child: Row(children: [
                                      CustomImageView(
                                          svgPath: ImageConstant.imgTrash,
                                          height: getSize(24),
                                          width: getSize(24)),
                                      Padding(
                                          padding: getPadding(
                                              left: 16, top: 4, bottom: 1),
                                          child: Text("lbl_woman_bag".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsBold12Indigo900
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.5))))
                                    ])),
                                Container(
                                    width: double.maxFinite,
                                    padding: getPadding(all: 16),
                                    decoration: AppDecoration.fillWhiteA700,
                                    child: Row(children: [
                                      CustomImageView(
                                          svgPath:
                                              ImageConstant.imgWomanpantsicon,
                                          height: getSize(24),
                                          width: getSize(24)),
                                      Padding(
                                          padding: getPadding(
                                              left: 16, top: 2, bottom: 3),
                                          child: Text("lbl_woman_pants".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsBold12Indigo900
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.5))))
                                    ])),
                                Container(
                                    width: double.maxFinite,
                                    padding: getPadding(all: 16),
                                    decoration: AppDecoration.fillWhiteA700,
                                    child: Row(children: [
                                      CustomImageView(
                                          svgPath:
                                              ImageConstant.imgHighheelsicon,
                                          height: getSize(24),
                                          width: getSize(24)),
                                      Padding(
                                          padding: getPadding(
                                              left: 16, top: 3, bottom: 2),
                                          child: Text("lbl_high_heels".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsBold12Indigo900
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.5))))
                                    ]))
                              ]))))));
    });
  }

  onTapManshoes(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.searchResultScreen,
    );
  }

  onTapArrowleft9(BuildContext context) {
    NavigatorService.goBack();
  }
}
