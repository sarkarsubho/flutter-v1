import '../notification_offer_screen/widgets/listoffer_item_widget.dart';
import 'bloc/notification_offer_bloc.dart';
import 'models/listoffer_item_model.dart';
import 'models/notification_offer_model.dart';
import 'package:fashon_bazar/core/app_export.dart';
import 'package:fashon_bazar/widgets/app_bar/appbar_image.dart';
import 'package:fashon_bazar/widgets/app_bar/appbar_title.dart';
import 'package:fashon_bazar/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class NotificationOfferScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<NotificationOfferBloc>(
        create: (context) => NotificationOfferBloc(NotificationOfferState(
            notificationOfferModelObj: NotificationOfferModel()))
          ..add(NotificationOfferInitialEvent()),
        child: NotificationOfferScreen());
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
                    margin: getMargin(left: 16, top: 16, bottom: 15),
                    onTap: () {
                      onTapArrowleft6(context);
                    }),
                title: AppbarTitle(
                    text: "lbl_notification".tr, margin: getMargin(left: 12))),
            body: Padding(
                padding: getPadding(top: 12),
                child: BlocSelector<NotificationOfferBloc,
                        NotificationOfferState, NotificationOfferModel?>(
                    selector: (state) => state.notificationOfferModelObj,
                    builder: (context, notificationOfferModelObj) {
                      return ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (context, index) {
                            return SizedBox(height: getVerticalSize(1));
                          },
                          itemCount: notificationOfferModelObj
                                  ?.listofferItemList.length ??
                              0,
                          itemBuilder: (context, index) {
                            ListofferItemModel model = notificationOfferModelObj
                                    ?.listofferItemList[index] ??
                                ListofferItemModel();
                            return ListofferItemWidget(model);
                          });
                    }))));
  }

  onTapArrowleft6(BuildContext context) {
    NavigatorService.goBack();
  }
}
