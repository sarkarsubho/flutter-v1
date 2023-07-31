import 'bloc/notification_one_bloc.dart';
import 'models/notification_one_model.dart';
import 'package:fashon_bazar/core/app_export.dart';
import 'package:fashon_bazar/widgets/app_bar/appbar_image.dart';
import 'package:fashon_bazar/widgets/app_bar/appbar_title.dart';
import 'package:fashon_bazar/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class NotificationOneScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<NotificationOneBloc>(
        create: (context) => NotificationOneBloc(NotificationOneState(
            notificationOneModelObj: NotificationOneModel()))
          ..add(NotificationOneInitialEvent()),
        child: NotificationOneScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotificationOneBloc, NotificationOneState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.whiteA700,
              appBar: CustomAppBar(
                  height: getVerticalSize(65),
                  leadingWidth: 40,
                  leading: AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgArrowleft,
                      margin: getMargin(left: 16, top: 16, bottom: 15),
                      onTap: () {
                        onTapArrowleft5(context);
                      }),
                  title: AppbarTitle(
                      text: "lbl_notification".tr,
                      margin: getMargin(left: 12))),
              body: Container(
                  width: double.maxFinite,
                  padding: getPadding(top: 12, bottom: 12),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GestureDetector(
                            onTap: () {
                              onTapOffer(context);
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
                                          svgPath: ImageConstant.imgOffer24x24,
                                          height: getSize(24),
                                          width: getSize(24)),
                                      Padding(
                                          padding: getPadding(
                                              left: 16, top: 2, bottom: 3),
                                          child: Text("lbl_offer".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsBold12Indigo900
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.5))))
                                    ]))),
                        GestureDetector(
                            onTap: () {
                              onTapFeed(context);
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
                                          svgPath: ImageConstant.imgFile,
                                          height: getSize(24),
                                          width: getSize(24)),
                                      Padding(
                                          padding: getPadding(
                                              left: 16, top: 2, bottom: 3),
                                          child: Text("lbl_feed".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsBold12Indigo900
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.5))))
                                    ]))),
                        GestureDetector(
                            onTap: () {
                              onTapActivity(context);
                            },
                            child: Container(
                                width: double.maxFinite,
                                margin: getMargin(bottom: 5),
                                padding: getPadding(all: 16),
                                decoration: AppDecoration.fillWhiteA700,
                                child: Row(children: [
                                  CustomImageView(
                                      svgPath:
                                          ImageConstant.imgNotification24x24,
                                      height: getSize(24),
                                      width: getSize(24)),
                                  Padding(
                                      padding: getPadding(
                                          left: 16, top: 3, bottom: 2),
                                      child: Text("lbl_acivity".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtPoppinsBold12Indigo900
                                              .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(0.5))))
                                ])))
                      ]))));
    });
  }

  onTapOffer(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.notificationOfferScreen,
    );
  }

  onTapFeed(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.notificationFeedScreen,
    );
  }

  onTapActivity(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.notificationScreen,
    );
  }

  onTapArrowleft5(BuildContext context) {
    NavigatorService.goBack();
  }
}
