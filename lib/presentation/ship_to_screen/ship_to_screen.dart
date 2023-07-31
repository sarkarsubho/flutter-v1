import '../ship_to_screen/widgets/ship_to_item_widget.dart';
import 'bloc/ship_to_bloc.dart';
import 'models/ship_to_item_model.dart';
import 'models/ship_to_model.dart';
import 'package:fashon_bazar/core/app_export.dart';
import 'package:fashon_bazar/widgets/app_bar/appbar_image.dart';
import 'package:fashon_bazar/widgets/app_bar/appbar_title.dart';
import 'package:fashon_bazar/widgets/app_bar/custom_app_bar.dart';
import 'package:fashon_bazar/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class ShipToScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<ShipToBloc>(
        create: (context) =>
            ShipToBloc(ShipToState(shipToModelObj: ShipToModel()))
              ..add(ShipToInitialEvent()),
        child: ShipToScreen());
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
                    height: getVerticalSize(28),
                    width: getHorizontalSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 13, bottom: 14),
                    onTap: () {
                      onTapArrowleft11(context);
                    }),
                title: AppbarTitle(
                    text: "lbl_ship_to".tr, margin: getMargin(left: 12)),
                actions: [
                  AppbarImage(
                      height: getVerticalSize(28),
                      width: getHorizontalSize(24),
                      svgPath: ImageConstant.imgPlus28x24,
                      margin:
                          getMargin(left: 16, top: 13, right: 16, bottom: 14),
                      onTap: () {
                        onTapPlus(context);
                      })
                ]),
            body: Padding(
                padding: getPadding(left: 16, top: 4, right: 16),
                child: BlocSelector<ShipToBloc, ShipToState, ShipToModel?>(
                    selector: (state) => state.shipToModelObj,
                    builder: (context, shipToModelObj) {
                      return ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (context, index) {
                            return SizedBox(height: getVerticalSize(22));
                          },
                          itemCount: shipToModelObj?.shipToItemList.length ?? 0,
                          itemBuilder: (context, index) {
                            ShipToItemModel model =
                                shipToModelObj?.shipToItemList[index] ??
                                    ShipToItemModel();
                            return ShipToItemWidget(model);
                          });
                    })),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(57),
                text: "lbl_next".tr,
                margin: getMargin(left: 16, right: 16, bottom: 50),
                onTap: () {
                  onTapNext(context);
                })));
  }

  onTapNext(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.paymentMethodScreen,
    );
  }

  onTapArrowleft11(BuildContext context) {
    NavigatorService.goBack();
  }

  onTapPlus(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.addressScreen,
    );
  }
}
