import '../explore_page/widgets/explore1_item_widget.dart';
import '../explore_page/widgets/explore_item_widget.dart';
import 'bloc/explore_bloc.dart';
import 'models/explore1_item_model.dart';
import 'models/explore_item_model.dart';
import 'models/explore_model.dart';
import 'package:fashon_bazar/core/app_export.dart';
import 'package:fashon_bazar/widgets/app_bar/appbar_image.dart';
import 'package:fashon_bazar/widgets/app_bar/appbar_searchview.dart';
import 'package:fashon_bazar/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ExplorePage extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<ExploreBloc>(
        create: (context) =>
            ExploreBloc(ExploreState(exploreModelObj: ExploreModel()))
              ..add(ExploreInitialEvent()),
        child: ExplorePage());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(67),
                title: BlocSelector<ExploreBloc, ExploreState,
                        TextEditingController?>(
                    selector: (state) => state.searchController,
                    builder: (context, searchController) {
                      return AppbarSearchview(
                          margin: getMargin(left: 16),
                          hintText: "lbl_search_product".tr,
                          controller: searchController);
                    }),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgDownload,
                      margin: getMargin(left: 16, top: 16, right: 16),
                      onTap: () {
                        onTapDownload1(context);
                      }),
                  Container(
                      height: getSize(24),
                      width: getSize(24),
                      margin: getMargin(left: 16, top: 16, right: 32),
                      child: Stack(alignment: Alignment.topRight, children: [
                        AppbarImage(
                            height: getSize(24),
                            width: getSize(24),
                            svgPath: ImageConstant.imgNotification,
                            onTap: () {
                              onTapNotification1(context);
                            }),
                        AppbarImage(
                            height: getSize(8),
                            width: getSize(8),
                            svgPath: ImageConstant.imgClose8x8,
                            margin: getMargin(left: 14, right: 2, bottom: 16))
                      ]))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 25, right: 16, bottom: 25),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("lbl_man_fashion".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsBold14Indigo900
                              .copyWith(letterSpacing: getHorizontalSize(0.5))),
                      Padding(
                          padding: getPadding(top: 13),
                          child: BlocSelector<ExploreBloc, ExploreState,
                                  ExploreModel?>(
                              selector: (state) => state.exploreModelObj,
                              builder: (context, exploreModelObj) {
                                return GridView.builder(
                                    shrinkWrap: true,
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                            mainAxisExtent: getVerticalSize(93),
                                            crossAxisCount: 4,
                                            mainAxisSpacing:
                                                getHorizontalSize(21),
                                            crossAxisSpacing:
                                                getHorizontalSize(21)),
                                    physics: NeverScrollableScrollPhysics(),
                                    itemCount: exploreModelObj
                                            ?.exploreItemList.length ??
                                        0,
                                    itemBuilder: (context, index) {
                                      ExploreItemModel model = exploreModelObj
                                              ?.exploreItemList[index] ??
                                          ExploreItemModel();
                                      return ExploreItemWidget(model);
                                    });
                              })),
                      Padding(
                          padding: getPadding(top: 23),
                          child: Text("lbl_woman_fashion".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsBold14Indigo900
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.5)))),
                      Padding(
                          padding: getPadding(top: 13),
                          child: BlocSelector<ExploreBloc, ExploreState,
                                  ExploreModel?>(
                              selector: (state) => state.exploreModelObj,
                              builder: (context, exploreModelObj) {
                                return ListView.separated(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    separatorBuilder: (context, index) {
                                      return SizedBox(
                                          height: getVerticalSize(16));
                                    },
                                    itemCount: exploreModelObj
                                            ?.explore1ItemList.length ??
                                        0,
                                    itemBuilder: (context, index) {
                                      Explore1ItemModel model = exploreModelObj
                                              ?.explore1ItemList[index] ??
                                          Explore1ItemModel();
                                      return Explore1ItemWidget(model);
                                    });
                              }))
                    ]))));
  }

  onTapDownload1(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.favoriteProductScreen,
    );
  }

  onTapNotification1(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.notificationOneScreen,
    );
  }
}
