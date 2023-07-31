import '../search_result_screen/widgets/search_result_item_widget.dart';
import 'bloc/search_result_bloc.dart';
import 'models/search_result_item_model.dart';
import 'models/search_result_model.dart';
import 'package:fashon_bazar/core/app_export.dart';
import 'package:fashon_bazar/widgets/app_bar/appbar_image.dart';
import 'package:fashon_bazar/widgets/app_bar/custom_app_bar.dart';
import 'package:fashon_bazar/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class SearchResultScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<SearchResultBloc>(
        create: (context) => SearchResultBloc(
            SearchResultState(searchResultModelObj: SearchResultModel()))
          ..add(SearchResultInitialEvent()),
        child: SearchResultScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(60),
                title: BlocSelector<SearchResultBloc, SearchResultState,
                        TextEditingController?>(
                    selector: (state) => state.searchController,
                    builder: (context, searchController) {
                      return CustomSearchView(
                          width: getHorizontalSize(263),
                          focusNode: FocusNode(),
                          controller: searchController,
                          hintText: "lbl_nike_air_max".tr,
                          margin: getMargin(left: 16),
                          fontStyle:
                              SearchViewFontStyle.PoppinsBold12Indigo90087,
                          prefix: Container(
                              margin: getMargin(
                                  left: 16, top: 12, right: 8, bottom: 14),
                              child: CustomImageView(
                                  svgPath:
                                      ImageConstant.imgSearchLightBlueA200)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(42)),
                          suffix: Padding(
                              padding:
                                  EdgeInsets.only(right: getHorizontalSize(15)),
                              child: IconButton(
                                  onPressed: () {
                                    searchController!.clear();
                                  },
                                  icon: Icon(Icons.clear,
                                      color: Colors.grey.shade600))));
                    }),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgSort,
                      margin: getMargin(left: 16, top: 9, right: 9),
                      onTap: () {
                        onTapSort(context);
                      }),
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgFilter,
                      margin: getMargin(left: 16, top: 9, right: 25),
                      onTap: () {
                        onTapFilter(context);
                      })
                ]),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(top: 18, bottom: 5),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: ColorConstant.blue50),
                              Padding(
                                  padding:
                                      getPadding(left: 16, top: 15, right: 16),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding:
                                                getPadding(top: 1, bottom: 4),
                                            child: Text("lbl_145_result".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsBold12Indigo90087
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.5)))),
                                        Spacer(),
                                        Padding(
                                            padding:
                                                getPadding(top: 2, bottom: 3),
                                            child: Text("lbl_man_shoes".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsBold12Indigo900
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.5)))),
                                        CustomImageView(
                                            svgPath: ImageConstant.imgArrowdown,
                                            height: getSize(24),
                                            width: getSize(24),
                                            margin: getMargin(left: 8))
                                      ])),
                              Padding(
                                  padding:
                                      getPadding(left: 16, top: 16, right: 16),
                                  child: BlocSelector<
                                          SearchResultBloc,
                                          SearchResultState,
                                          SearchResultModel?>(
                                      selector: (state) =>
                                          state.searchResultModelObj,
                                      builder: (context, searchResultModelObj) {
                                        return GridView.builder(
                                            shrinkWrap: true,
                                            gridDelegate:
                                                SliverGridDelegateWithFixedCrossAxisCount(
                                                    mainAxisExtent:
                                                        getVerticalSize(283),
                                                    crossAxisCount: 2,
                                                    mainAxisSpacing:
                                                        getHorizontalSize(13),
                                                    crossAxisSpacing:
                                                        getHorizontalSize(13)),
                                            physics:
                                                NeverScrollableScrollPhysics(),
                                            itemCount: searchResultModelObj
                                                    ?.searchResultItemList
                                                    .length ??
                                                0,
                                            itemBuilder: (context, index) {
                                              SearchResultItemModel model =
                                                  searchResultModelObj
                                                              ?.searchResultItemList[
                                                          index] ??
                                                      SearchResultItemModel();
                                              return SearchResultItemWidget(
                                                  model, onTapProduct: () {
                                                onTapProduct(context);
                                              });
                                            });
                                      }))
                            ]))))));
  }

  onTapProduct(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.productDetailScreen);
  }

  onTapSort(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.sortByScreen,
    );
  }

  onTapFilter(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.filterScreen,
    );
  }
}
