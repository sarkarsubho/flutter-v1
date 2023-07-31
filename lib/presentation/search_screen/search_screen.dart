import 'bloc/search_bloc.dart';
import 'models/search_model.dart';
import 'package:fashon_bazar/core/app_export.dart';
import 'package:fashon_bazar/widgets/app_bar/appbar_image.dart';
import 'package:fashon_bazar/widgets/app_bar/custom_app_bar.dart';
import 'package:fashon_bazar/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<SearchBloc>(
        create: (context) =>
            SearchBloc(SearchState(searchModelObj: SearchModel()))
              ..add(SearchInitialEvent()),
        child: SearchScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.whiteA700,
              appBar: CustomAppBar(
                  height: getVerticalSize(67),
                  title: BlocSelector<SearchBloc, SearchState,
                          TextEditingController?>(
                      selector: (state) => state.searchController,
                      builder: (context, searchController) {
                        return CustomSearchView(
                            width: getHorizontalSize(291),
                            focusNode: FocusNode(),
                            controller: searchController,
                            hintText: "lbl_nike_air_max".tr,
                            margin: getMargin(left: 16),
                            variant: SearchViewVariant.OutlineLightblueA200,
                            padding: SearchViewPadding.PaddingT12,
                            fontStyle:
                                SearchViewFontStyle.PoppinsBold12Indigo90087,
                            prefix: Container(
                                margin: getMargin(
                                    left: 16, top: 12, right: 8, bottom: 16),
                                child: CustomImageView(
                                    svgPath:
                                        ImageConstant.imgSearchLightBlueA200)),
                            prefixConstraints:
                                BoxConstraints(maxHeight: getVerticalSize(44)),
                            suffix: Container(
                                margin: getMargin(
                                    left: 30, top: 12, right: 16, bottom: 12),
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgClose20x20)),
                            suffixConstraints:
                                BoxConstraints(maxHeight: getVerticalSize(44)));
                      }),
                  actions: [
                    AppbarImage(
                        height: getSize(24),
                        width: getSize(24),
                        svgPath: ImageConstant.imgUpload24x24,
                        margin: getMargin(all: 16))
                  ]),
              body: Container(
                  width: double.maxFinite,
                  padding: getPadding(top: 11, bottom: 11),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Divider(
                            height: getVerticalSize(1),
                            thickness: getVerticalSize(1),
                            color: ColorConstant.blue50,
                            indent: getHorizontalSize(6)),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: GestureDetector(
                                onTap: () {
                                  onTapTxtLanguage(context);
                                },
                                child: Container(
                                    width: double.maxFinite,
                                    margin: getMargin(top: 9),
                                    padding: getPadding(
                                        left: 16,
                                        top: 17,
                                        right: 16,
                                        bottom: 17),
                                    decoration: AppDecoration.txtFillWhiteA700,
                                    child: Text("msg_nike_air_max_273".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsRegular12
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.5)))))),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: GestureDetector(
                                onTap: () {
                                  onTapTxtSearchresult(context);
                                },
                                child: Container(
                                    width: double.maxFinite,
                                    padding: getPadding(
                                        left: 16,
                                        top: 17,
                                        right: 16,
                                        bottom: 17),
                                    decoration: AppDecoration.txtFillWhiteA700,
                                    child: Text("msg_nike_air_vaporm".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsRegular12
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.5)))))),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                                width: double.maxFinite,
                                padding: getPadding(
                                    left: 16, top: 17, right: 16, bottom: 17),
                                decoration: AppDecoration.txtFillWhiteA700,
                                child: Text("msg_nike_air_max_273".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsRegular12
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.5))))),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                                width: double.maxFinite,
                                padding: getPadding(
                                    left: 16, top: 17, right: 16, bottom: 17),
                                decoration: AppDecoration.txtFillWhiteA700,
                                child: Text("msg_nike_air_max_274".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsRegular12
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.5))))),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                                width: double.maxFinite,
                                padding: getPadding(
                                    left: 16, top: 17, right: 16, bottom: 17),
                                decoration: AppDecoration.txtFillWhiteA700,
                                child: Text("msg_nike_air_vaporm2".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsRegular12
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.5))))),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                                width: double.maxFinite,
                                margin: getMargin(bottom: 5),
                                padding: getPadding(
                                    left: 16, top: 17, right: 16, bottom: 17),
                                decoration: AppDecoration.txtFillWhiteA700,
                                child: Text("msg_nike_air_max_97".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsRegular12
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.5)))))
                      ]))));
    });
  }

  onTapTxtLanguage(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.searchResultScreen,
    );
  }

  onTapTxtSearchresult(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.searchResultScreen,
    );
  }
}
