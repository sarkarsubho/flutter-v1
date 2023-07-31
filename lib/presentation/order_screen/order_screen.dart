import '../order_screen/widgets/order_item_widget.dart';
import 'bloc/order_bloc.dart';
import 'models/order_item_model.dart';
import 'models/order_model.dart';
import 'package:fashon_bazar/core/app_export.dart';
import 'package:fashon_bazar/widgets/app_bar/appbar_image.dart';
import 'package:fashon_bazar/widgets/app_bar/appbar_title.dart';
import 'package:fashon_bazar/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<OrderBloc>(
        create: (context) => OrderBloc(OrderState(orderModelObj: OrderModel()))
          ..add(OrderInitialEvent()),
        child: OrderScreen());
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
                      onTapArrowleft16(context);
                    }),
                title: AppbarTitle(
                    text: "lbl_order".tr, margin: getMargin(left: 12))),
            body: Padding(
                padding: getPadding(left: 15, top: 19, right: 16),
                child: BlocSelector<OrderBloc, OrderState, OrderModel?>(
                    selector: (state) => state.orderModelObj,
                    builder: (context, orderModelObj) {
                      return ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (context, index) {
                            return SizedBox(height: getVerticalSize(10));
                          },
                          itemCount: orderModelObj?.orderItemList.length ?? 0,
                          itemBuilder: (context, index) {
                            OrderItemModel model =
                                orderModelObj?.orderItemList[index] ??
                                    OrderItemModel();
                            return OrderItemWidget(model, onTapOrder: () {
                              onTapOrder(context);
                            });
                          });
                    }))));
  }

  onTapOrder(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.orderDetailsScreen);
  }

  onTapArrowleft16(BuildContext context) {
    NavigatorService.goBack();
  }
}
