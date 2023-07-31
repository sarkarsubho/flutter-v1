import '../notification_screen/widgets/notification_item_widget.dart';
import 'bloc/notification_bloc.dart';
import 'models/notification_item_model.dart';
import 'models/notification_model.dart';
import 'package:fashon_bazar/core/app_export.dart';
import 'package:fashon_bazar/widgets/app_bar/appbar_image.dart';
import 'package:fashon_bazar/widgets/app_bar/appbar_title.dart';
import 'package:fashon_bazar/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<NotificationBloc>(
        create: (context) => NotificationBloc(
            NotificationState(notificationModelObj: NotificationModel()))
          ..add(NotificationInitialEvent()),
        child: NotificationScreen());
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
                      onTapArrowleft8(context);
                    }),
                title: AppbarTitle(
                    text: "lbl_activity".tr, margin: getMargin(left: 12))),
            body: Padding(
                padding: getPadding(top: 11),
                child: BlocSelector<NotificationBloc, NotificationState,
                        NotificationModel?>(
                    selector: (state) => state.notificationModelObj,
                    builder: (context, notificationModelObj) {
                      return ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (context, index) {
                            return SizedBox(height: getVerticalSize(1));
                          },
                          itemCount: notificationModelObj
                                  ?.notificationItemList.length ??
                              0,
                          itemBuilder: (context, index) {
                            NotificationItemModel model = notificationModelObj
                                    ?.notificationItemList[index] ??
                                NotificationItemModel();
                            return NotificationItemWidget(model);
                          });
                    }))));
  }

  onTapArrowleft8(BuildContext context) {
    NavigatorService.goBack();
  }
}
