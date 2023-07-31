import '../order_details_screen/widgets/order_details_item_widget.dart';
import 'bloc/order_details_bloc.dart';
import 'models/order_details_item_model.dart';
import 'models/order_details_model.dart';
import 'package:fashon_bazar/core/app_export.dart';
import 'package:fashon_bazar/widgets/app_bar/appbar_image.dart';
import 'package:fashon_bazar/widgets/app_bar/appbar_title.dart';
import 'package:fashon_bazar/widgets/app_bar/custom_app_bar.dart';
import 'package:fashon_bazar/widgets/custom_button.dart';
import 'package:fashon_bazar/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class OrderDetailsScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<OrderDetailsBloc>(
        create: (context) => OrderDetailsBloc(
            OrderDetailsState(orderDetailsModelObj: OrderDetailsModel()))
          ..add(OrderDetailsInitialEvent()),
        child: OrderDetailsScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(24),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16),
                    onTap: () {
                      onTapArrowleft17(context);
                    }),
                title: AppbarTitle(
                    text: "lbl_order_details".tr, margin: getMargin(left: 12))),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding:
                            getPadding(left: 14, top: 43, right: 16, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  height: getVerticalSize(57),
                                  width: getHorizontalSize(342),
                                  child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Padding(
                                                padding: getPadding(top: 12),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      SizedBox(
                                                          width:
                                                              getHorizontalSize(
                                                                  96),
                                                          child: Divider(
                                                              height:
                                                                  getVerticalSize(
                                                                      1),
                                                              thickness:
                                                                  getVerticalSize(
                                                                      1),
                                                              color: ColorConstant
                                                                  .lightBlueA200)),
                                                      SizedBox(
                                                          width:
                                                              getHorizontalSize(
                                                                  96),
                                                          child: Divider(
                                                              height:
                                                                  getVerticalSize(
                                                                      1),
                                                              thickness:
                                                                  getVerticalSize(
                                                                      1),
                                                              color: ColorConstant
                                                                  .lightBlueA200)),
                                                      SizedBox(
                                                          width:
                                                              getHorizontalSize(
                                                                  96),
                                                          child: Divider(
                                                              height:
                                                                  getVerticalSize(
                                                                      1),
                                                              thickness:
                                                                  getVerticalSize(
                                                                      1),
                                                              color:
                                                                  ColorConstant
                                                                      .blue50))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        CustomIconButton(
                                                            height: 24,
                                                            width: 24,
                                                            variant:
                                                                IconButtonVariant
                                                                    .FillLightblueA200,
                                                            shape: IconButtonShape
                                                                .CircleBorder12,
                                                            padding:
                                                                IconButtonPadding
                                                                    .PaddingAll8,
                                                            child: CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgVector41)),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 10),
                                                            child: Text(
                                                                "lbl_packing"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtPoppinsRegular12
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            getHorizontalSize(0.5))))
                                                      ]),
                                                  Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        CustomIconButton(
                                                            height: 24,
                                                            width: 24,
                                                            variant:
                                                                IconButtonVariant
                                                                    .FillLightblueA200,
                                                            shape: IconButtonShape
                                                                .CircleBorder12,
                                                            padding:
                                                                IconButtonPadding
                                                                    .PaddingAll8,
                                                            child: CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgVector41)),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 10),
                                                            child: Text(
                                                                "lbl_shipping"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtPoppinsRegular12
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            getHorizontalSize(0.5))))
                                                      ]),
                                                  Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        CustomIconButton(
                                                            height: 24,
                                                            width: 24,
                                                            variant:
                                                                IconButtonVariant
                                                                    .FillLightblueA200,
                                                            shape: IconButtonShape
                                                                .CircleBorder12,
                                                            padding:
                                                                IconButtonPadding
                                                                    .PaddingAll8,
                                                            child: CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgVector41)),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 10),
                                                            child: Text(
                                                                "lbl_arriving"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtPoppinsRegular12
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            getHorizontalSize(0.5))))
                                                      ]),
                                                  Padding(
                                                      padding:
                                                          getPadding(bottom: 1),
                                                      child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgCheckmark24x24,
                                                                height:
                                                                    getSize(24),
                                                                width:
                                                                    getSize(24),
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            13)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top:
                                                                            13),
                                                                child: Text(
                                                                    "lbl_success"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtPoppinsRegular12
                                                                        .copyWith(
                                                                            letterSpacing:
                                                                                getHorizontalSize(0.5))))
                                                          ]))
                                                ]))
                                      ])),
                              Padding(
                                  padding: getPadding(left: 2, top: 24),
                                  child: Text("lbl_product".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14Indigo900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              Padding(
                                  padding: getPadding(left: 2, top: 12),
                                  child: BlocSelector<
                                          OrderDetailsBloc,
                                          OrderDetailsState,
                                          OrderDetailsModel?>(
                                      selector: (state) =>
                                          state.orderDetailsModelObj,
                                      builder: (context, orderDetailsModelObj) {
                                        return ListView.separated(
                                            physics:
                                                NeverScrollableScrollPhysics(),
                                            shrinkWrap: true,
                                            separatorBuilder: (context, index) {
                                              return SizedBox(
                                                  height: getVerticalSize(8));
                                            },
                                            itemCount: orderDetailsModelObj
                                                    ?.orderDetailsItemList
                                                    .length ??
                                                0,
                                            itemBuilder: (context, index) {
                                              OrderDetailsItemModel model =
                                                  orderDetailsModelObj
                                                              ?.orderDetailsItemList[
                                                          index] ??
                                                      OrderDetailsItemModel();
                                              return OrderDetailsItemWidget(
                                                  model);
                                            });
                                      })),
                              Padding(
                                  padding: getPadding(left: 2, top: 24),
                                  child: Text("msg_shipping_detail".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14Indigo900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              Container(
                                  width: double.maxFinite,
                                  child: Container(
                                      margin: getMargin(left: 2, top: 11),
                                      padding: getPadding(
                                          left: 16,
                                          top: 19,
                                          right: 16,
                                          bottom: 19),
                                      decoration: AppDecoration.outlineBlue501
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder5),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text("lbl_date_shipping".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsRegular12Indigo90087
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.5))),
                                                  Text("msg_january_16_202".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsRegular12Indigo900
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.5)))
                                                ]),
                                            Padding(
                                                padding: getPadding(top: 15),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text("lbl_shipping".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsRegular12Indigo90087
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.5))),
                                                      Text(
                                                          "lbl_pos_reggular".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsRegular12Indigo900
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.5)))
                                                    ])),
                                            Padding(
                                                padding: getPadding(top: 14),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text("lbl_no_resi".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsRegular12Indigo90087
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.5))),
                                                      Text(
                                                          "lbl_000192848573".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsRegular12Indigo900
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.5)))
                                                    ])),
                                            Padding(
                                                padding: getPadding(top: 15),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              bottom: 22),
                                                          child: Text(
                                                              "lbl_address".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtPoppinsRegular12Indigo90087
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          getHorizontalSize(
                                                                              0.5)))),
                                                      Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  160),
                                                          margin:
                                                              getMargin(top: 1),
                                                          child: Text(
                                                              "msg_2727_new_owerr"
                                                                  .tr,
                                                              maxLines: null,
                                                              textAlign:
                                                                  TextAlign
                                                                      .right,
                                                              style: AppStyle
                                                                  .txtPoppinsRegular12Indigo900
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          getHorizontalSize(
                                                                              0.5))))
                                                    ]))
                                          ]))),
                              Padding(
                                  padding: getPadding(left: 2, top: 46),
                                  child: Text("lbl_payment_details".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14Indigo900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              Container(
                                  width: double.maxFinite,
                                  child: Container(
                                      margin: getMargin(left: 1, top: 11),
                                      padding: getPadding(all: 16),
                                      decoration: AppDecoration.outlineBlue501
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder5),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                                padding: getPadding(top: 1),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text("lbl_items_3".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsRegular12
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.5))),
                                                      Text("lbl_598_86".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
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
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 1),
                                                          child: Text(
                                                              "lbl_shipping".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtPoppinsRegular12
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          getHorizontalSize(
                                                                              0.5)))),
                                                      Padding(
                                                          padding: getPadding(
                                                              bottom: 1),
                                                          child: Text(
                                                              "lbl_40_00".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
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
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 1),
                                                          child: Text(
                                                              "lbl_import_charges"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtPoppinsRegular12
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          getHorizontalSize(
                                                                              0.5)))),
                                                      Padding(
                                                          padding: getPadding(
                                                              bottom: 1),
                                                          child: Text(
                                                              "lbl_128_00".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
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
                                                    thickness:
                                                        getVerticalSize(1),
                                                    color:
                                                        ColorConstant.blue50)),
                                            Padding(
                                                padding: getPadding(top: 10),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text("lbl_total_price".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsBold12Indigo900
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.5))),
                                                      Text("lbl_766_86".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsBold12
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.5)))
                                                    ]))
                                          ])))
                            ])))),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(57),
                text: "lbl_notify_me".tr,
                margin: getMargin(left: 16, right: 16, bottom: 50))));
  }

  onTapArrowleft17(BuildContext context) {
    NavigatorService.goBack();
  }
}
