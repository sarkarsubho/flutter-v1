import '../notification_feed_screen/widgets/listnewproduct_item_widget.dart';
import 'bloc/notification_feed_bloc.dart';
import 'models/listnewproduct_item_model.dart';
import 'models/notification_feed_model.dart';
import 'package:fashon_bazar/core/app_export.dart';
import 'package:fashon_bazar/widgets/app_bar/appbar_image.dart';
import 'package:fashon_bazar/widgets/app_bar/appbar_title.dart';
import 'package:fashon_bazar/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class NotificationFeedScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<NotificationFeedBloc>(
        create: (context) => NotificationFeedBloc(NotificationFeedState(
            notificationFeedModelObj: NotificationFeedModel()))
          ..add(NotificationFeedInitialEvent()),
        child: NotificationFeedScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(56),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 15, bottom: 16),
                    onTap: () {
                      onTapArrowleft7(context);
                    }),
                title: AppbarTitle(
                    text: "lbl_feed".tr, margin: getMargin(left: 12))),
            body: Padding(
                padding: getPadding(top: 11),
                child: BlocSelector<NotificationFeedBloc, NotificationFeedState,
                        NotificationFeedModel?>(
                    selector: (state) => state.notificationFeedModelObj,
                    builder: (context, notificationFeedModelObj) {
                      return ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (context, index) {
                            return SizedBox(height: getVerticalSize(1));
                          },
                          itemCount: notificationFeedModelObj
                                  ?.listnewproductItemList.length ??
                              0,
                          itemBuilder: (context, index) {
                            ListnewproductItemModel model =
                                notificationFeedModelObj
                                        ?.listnewproductItemList[index] ??
                                    ListnewproductItemModel();
                            return ListnewproductItemWidget(model,
                                onTapFeeditem: () {
                              onTapFeeditem(context);
                            });
                          });
                    }))));
  }

  onTapFeeditem(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.productDetailScreen);
  }

  onTapArrowleft7(BuildContext context) {
    NavigatorService.goBack();
  }
}
