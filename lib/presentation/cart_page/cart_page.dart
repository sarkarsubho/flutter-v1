import '../cart_page/widgets/cart_item_widget.dart';
import 'bloc/cart_bloc.dart';
import 'models/cart_item_model.dart';
import 'models/cart_model.dart';
import 'package:fashon_bazar/core/app_export.dart';
import 'package:fashon_bazar/widgets/app_bar/appbar_image.dart';
import 'package:fashon_bazar/widgets/app_bar/appbar_title.dart';
import 'package:fashon_bazar/widgets/app_bar/custom_app_bar.dart';
import 'package:fashon_bazar/widgets/custom_button.dart';
import 'package:fashon_bazar/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<CartBloc>(
        create: (context) => CartBloc(CartState(cartModelObj: CartModel()))
          ..add(CartInitialEvent()),
        child: CartPage());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(66),
                title: AppbarTitle(
                    text: "lbl_your_cart".tr, margin: getMargin(left: 16)),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgNotification,
                      margin:
                          getMargin(left: 13, top: 15, right: 13, bottom: 16),
                      onTap: () {
                        onTapNotification2(context);
                      })
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 15, top: 7, right: 15, bottom: 7),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 1, right: 1),
                          child: BlocSelector<CartBloc, CartState, CartModel?>(
                              selector: (state) => state.cartModelObj,
                              builder: (context, cartModelObj) {
                                return ListView.separated(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    separatorBuilder: (context, index) {
                                      return SizedBox(
                                          height: getVerticalSize(16));
                                    },
                                    itemCount:
                                        cartModelObj?.cartItemList.length ?? 0,
                                    itemBuilder: (context, index) {
                                      CartItemModel model =
                                          cartModelObj?.cartItemList[index] ??
                                              CartItemModel();
                                      return CartItemWidget(model,
                                          onTapProductdetails: () {
                                        onTapProductdetails(context);
                                      });
                                    });
                              })),
                      Padding(
                          padding: getPadding(top: 52),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                    child: BlocSelector<CartBloc, CartState,
                                            TextEditingController?>(
                                        selector: (state) =>
                                            state.coponcodefieldController,
                                        builder: (context,
                                            coponcodefieldController) {
                                          return CustomTextFormField(
                                              focusNode: FocusNode(),
                                              controller:
                                                  coponcodefieldController,
                                              hintText:
                                                  "msg_enter_cupon_cod".tr,
                                              padding: TextFormFieldPadding
                                                  .PaddingT19,
                                              textInputAction:
                                                  TextInputAction.done);
                                        })),
                                CustomButton(
                                    height: getVerticalSize(56),
                                    width: getHorizontalSize(87),
                                    text: "lbl_apply".tr,
                                    variant: ButtonVariant.FillLightblueA200,
                                    shape: ButtonShape.CustomBorderLR5,
                                    fontStyle:
                                        ButtonFontStyle.PoppinsBold12WhiteA700)
                              ])),
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              margin: getMargin(top: 16, right: 2),
                              padding: getPadding(all: 16),
                              decoration: AppDecoration.outlineBlue501.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder5),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("lbl_items_3".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsRegular12
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.5))),
                                              Text("lbl_598_86".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsRegular12Indigo900
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.5)))
                                            ])),
                                    Padding(
                                        padding: getPadding(top: 16),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                  padding: getPadding(top: 1),
                                                  child: Text("lbl_shipping".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsRegular12
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.5)))),
                                              Padding(
                                                  padding:
                                                      getPadding(bottom: 1),
                                                  child: Text("lbl_40_00".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsRegular12Indigo900
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.5))))
                                            ])),
                                    Padding(
                                        padding: getPadding(top: 14),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                  padding: getPadding(top: 1),
                                                  child: Text(
                                                      "lbl_import_charges".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsRegular12
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.5)))),
                                              Padding(
                                                  padding:
                                                      getPadding(bottom: 1),
                                                  child: Text("lbl_128_00".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsRegular12Indigo900
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.5))))
                                            ])),
                                    Padding(
                                        padding: getPadding(top: 12),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: ColorConstant.blue50)),
                                    Padding(
                                        padding: getPadding(top: 10),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("lbl_total_price".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsBold12Indigo900
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.5))),
                                              Text("lbl_766_86".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsBold12
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.5)))
                                            ]))
                                  ]))),
                      CustomButton(
                          height: getVerticalSize(57),
                          text: "lbl_check_out".tr,
                          margin: getMargin(top: 16, bottom: 8),
                          onTap: () {
                            onTapCheckout(context);
                          })
                    ]))));
  }

  onTapProductdetails(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.productDetailScreen);
  }

  onTapCheckout(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.shipToScreen,
    );
  }

  onTapNotification2(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.notificationOneScreen,
    );
  }
}
