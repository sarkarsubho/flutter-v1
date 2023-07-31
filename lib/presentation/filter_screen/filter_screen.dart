import '../filter_screen/widgets/buyingformate_item_widget.dart';
import '../filter_screen/widgets/itemlocation_item_widget.dart';
import '../filter_screen/widgets/showonly_item_widget.dart';
import 'bloc/filter_bloc.dart';
import 'models/buyingformate_item_model.dart';
import 'models/filter_model.dart';
import 'models/itemlocation_item_model.dart';
import 'models/showonly_item_model.dart';
import 'package:fashon_bazar/core/app_export.dart';
import 'package:fashon_bazar/widgets/app_bar/appbar_image.dart';
import 'package:fashon_bazar/widgets/app_bar/appbar_title.dart';
import 'package:fashon_bazar/widgets/app_bar/custom_app_bar.dart';
import 'package:fashon_bazar/widgets/custom_button.dart';
import 'package:fashon_bazar/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class FilterScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<FilterBloc>(
        create: (context) =>
            FilterBloc(FilterState(filterModelObj: FilterModel()))
              ..add(FilterInitialEvent()),
        child: FilterScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(24),
                leadingWidth: 42,
                leading: AppbarImage(
                    height: getVerticalSize(23),
                    width: getHorizontalSize(24),
                    svgPath: ImageConstant.imgClose23x24,
                    margin: getMargin(left: 18),
                    onTap: () {
                      onTapClose(context);
                    }),
                title: AppbarTitle(
                    text: "lbl_filter_search".tr, margin: getMargin(left: 12))),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding:
                            getPadding(left: 16, top: 47, right: 16, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("lbl_price_range".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsBold14Indigo900
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.5))),
                              Padding(
                                  padding: getPadding(top: 11),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Expanded(
                                            child: BlocSelector<
                                                    FilterBloc,
                                                    FilterState,
                                                    TextEditingController?>(
                                                selector: (state) =>
                                                    state.priceController,
                                                builder:
                                                    (context, priceController) {
                                                  return CustomTextFormField(
                                                      focusNode: FocusNode(),
                                                      controller:
                                                          priceController,
                                                      hintText: "lbl_1_245".tr,
                                                      margin:
                                                          getMargin(right: 6),
                                                      padding:
                                                          TextFormFieldPadding
                                                              .PaddingT17_1,
                                                      fontStyle:
                                                          TextFormFieldFontStyle
                                                              .PoppinsBold12Bluegray300);
                                                })),
                                        Expanded(
                                            child: BlocSelector<
                                                    FilterBloc,
                                                    FilterState,
                                                    TextEditingController?>(
                                                selector: (state) =>
                                                    state.priceOneController,
                                                builder: (context,
                                                    priceOneController) {
                                                  return CustomTextFormField(
                                                      focusNode: FocusNode(),
                                                      controller:
                                                          priceOneController,
                                                      hintText: "lbl_9_344".tr,
                                                      margin:
                                                          getMargin(left: 6),
                                                      padding:
                                                          TextFormFieldPadding
                                                              .PaddingT17_1,
                                                      fontStyle:
                                                          TextFormFieldFontStyle
                                                              .PoppinsBold12Bluegray300,
                                                      textInputAction:
                                                          TextInputAction.done);
                                                }))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 34),
                                  child: Text("lbl_condition".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14Indigo900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              Padding(
                                  padding: getPadding(top: 13, right: 82),
                                  child: Row(children: [
                                    Container(
                                        width: getHorizontalSize(59),
                                        padding: getPadding(
                                            left: 16,
                                            top: 15,
                                            right: 16,
                                            bottom: 15),
                                        decoration: AppDecoration
                                            .txtOutlineBlue501
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .txtRoundedBorder5),
                                        child: Text("lbl_new".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtPoppinsRegular12
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.5)))),
                                    Container(
                                        width: getHorizontalSize(65),
                                        margin: getMargin(left: 9),
                                        padding: getPadding(
                                            left: 16,
                                            top: 15,
                                            right: 16,
                                            bottom: 15),
                                        decoration: AppDecoration
                                            .txtFillLightblueA20019
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .txtRoundedBorder5),
                                        child: Text("lbl_used".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtPoppinsBold12
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.5)))),
                                    Container(
                                        width: getHorizontalSize(120),
                                        margin: getMargin(left: 8),
                                        padding: getPadding(
                                            left: 16,
                                            top: 15,
                                            right: 16,
                                            bottom: 15),
                                        decoration: AppDecoration
                                            .txtFillLightblueA20019
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .txtRoundedBorder5),
                                        child: Text("lbl_not_specified".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtPoppinsBold12
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.5))))
                                  ])),
                              Padding(
                                  padding: getPadding(top: 24),
                                  child: Text("lbl_buying_format".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14Indigo900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              Padding(
                                  padding: getPadding(top: 11),
                                  child: BlocSelector<FilterBloc, FilterState,
                                          FilterModel?>(
                                      selector: (state) => state.filterModelObj,
                                      builder: (context, filterModelObj) {
                                        return Wrap(
                                            runSpacing: getVerticalSize(5),
                                            spacing: getHorizontalSize(5),
                                            children: List<Widget>.generate(
                                                filterModelObj
                                                        ?.buyingformateItemList
                                                        .length ??
                                                    0, (index) {
                                              BuyingformateItemModel model =
                                                  filterModelObj
                                                              ?.buyingformateItemList[
                                                          index] ??
                                                      BuyingformateItemModel();
                                              return BuyingformateItemWidget(
                                                  model,
                                                  onSelectedChipView: (value) {
                                                context.read<FilterBloc>().add(
                                                    UpdateChipViewEvent(
                                                        index: index,
                                                        isSelected: value));
                                              });
                                            }));
                                      })),
                              Padding(
                                  padding: getPadding(top: 22),
                                  child: Text("lbl_item_location".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14Indigo900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              Padding(
                                  padding: getPadding(top: 13),
                                  child: BlocSelector<FilterBloc, FilterState,
                                          FilterModel?>(
                                      selector: (state) => state.filterModelObj,
                                      builder: (context, filterModelObj) {
                                        return Wrap(
                                            runSpacing: getVerticalSize(5),
                                            spacing: getHorizontalSize(5),
                                            children: List<Widget>.generate(
                                                filterModelObj
                                                        ?.itemlocationItemList
                                                        .length ??
                                                    0, (index) {
                                              ItemlocationItemModel model =
                                                  filterModelObj
                                                              ?.itemlocationItemList[
                                                          index] ??
                                                      ItemlocationItemModel();
                                              return ItemlocationItemWidget(
                                                  model,
                                                  onSelectedChipView: (value) {
                                                context.read<FilterBloc>().add(
                                                    UpdateChipView1Event(
                                                        index: index,
                                                        isSelected: value));
                                              });
                                            }));
                                      })),
                              Padding(
                                  padding: getPadding(top: 25),
                                  child: Text("lbl_show_only".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold14Indigo900
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.5)))),
                              Padding(
                                  padding: getPadding(top: 10),
                                  child: BlocSelector<FilterBloc, FilterState,
                                          FilterModel?>(
                                      selector: (state) => state.filterModelObj,
                                      builder: (context, filterModelObj) {
                                        return Wrap(
                                            runSpacing: getVerticalSize(5),
                                            spacing: getHorizontalSize(5),
                                            children: List<Widget>.generate(
                                                filterModelObj?.showonlyItemList
                                                        .length ??
                                                    0, (index) {
                                              ShowonlyItemModel model =
                                                  filterModelObj
                                                              ?.showonlyItemList[
                                                          index] ??
                                                      ShowonlyItemModel();
                                              return ShowonlyItemWidget(model,
                                                  onSelectedChipView: (value) {
                                                context.read<FilterBloc>().add(
                                                    UpdateChipView2Event(
                                                        index: index,
                                                        isSelected: value));
                                              });
                                            }));
                                      }))
                            ])))),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(57),
                text: "lbl_apply".tr,
                margin: getMargin(left: 16, right: 16, bottom: 50),
                onTap: () {
                  onTapApply(context);
                })));
  }

  onTapApply(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.searchResultScreen,
    );
  }

  onTapClose(BuildContext context) {
    NavigatorService.goBack();
  }
}
