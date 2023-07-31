import '../dashboard_page/widgets/categories_item_widget.dart';
import '../dashboard_page/widgets/dashboard_item_widget.dart';
import '../dashboard_page/widgets/flashsale_item_widget.dart';
import '../dashboard_page/widgets/megasale_item_widget.dart';
import '../dashboard_page/widgets/sliderofferbannertitl_item_widget.dart';
import 'bloc/dashboard_bloc.dart';
import 'models/categories_item_model.dart';
import 'models/dashboard_item_model.dart';
import 'models/dashboard_model.dart';
import 'models/flashsale_item_model.dart';
import 'models/megasale_item_model.dart';
import 'models/sliderofferbannertitl_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fashon_bazar/core/app_export.dart';
import 'package:fashon_bazar/widgets/app_bar/appbar_image.dart';
import 'package:fashon_bazar/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DashboardPage extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<DashboardBloc>(
        create: (context) =>
            DashboardBloc(DashboardState(dashboardModelObj: DashboardModel()))
              ..add(DashboardInitialEvent()),
        child: DashboardPage());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(43),
                leadingWidth: 48,
                leading: AppbarImage(
                    height: getSize(16),
                    width: getSize(16),
                    svgPath: ImageConstant.imgSearchLightBlueA200,
                    margin: getMargin(left: 32, top: 4, bottom: 4)),
                title: GestureDetector(
                    onTap: () {
                      onTapTxtSearchproduct(context);
                    },
                    child: Padding(
                        padding: getPadding(left: 8),
                        child: Text("lbl_search_product".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsRegular12.copyWith(
                                letterSpacing: getHorizontalSize(0.5))))),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgDownload,
                      margin: getMargin(left: 16),
                      onTap: () {
                        onTapDownload(context);
                      }),
                  Container(
                      height: getSize(24),
                      width: getSize(24),
                      margin: getMargin(left: 16, right: 16),
                      child: Stack(alignment: Alignment.topRight, children: [
                        AppbarImage(
                            height: getSize(24),
                            width: getSize(24),
                            svgPath: ImageConstant.imgNotification,
                            onTap: () {
                              onTapNotification(context);
                            }),
                        AppbarImage(
                            height: getSize(8),
                            width: getSize(8),
                            svgPath: ImageConstant.imgClose8x8,
                            margin: getMargin(left: 14, right: 2, bottom: 16))
                      ]))
                ]),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(left: 16, top: 43, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: getPadding(right: 16),
                                  child: BlocBuilder<DashboardBloc,
                                          DashboardState>(
                                      builder: (context, state) {
                                    return CarouselSlider.builder(
                                        options: CarouselOptions(
                                            height: getVerticalSize(206),
                                            initialPage: 0,
                                            autoPlay: true,
                                            viewportFraction: 1.0,
                                            enableInfiniteScroll: false,
                                            scrollDirection: Axis.horizontal,
                                            onPageChanged: (index, reason) {
                                              state.silderIndex = index;
                                            }),
                                        itemCount: state
                                                .dashboardModelObj
                                                ?.sliderofferbannertitlItemList
                                                .length ??
                                            0,
                                        itemBuilder:
                                            (context, index, realIndex) {
                                          SliderofferbannertitlItemModel model = state
                                                      .dashboardModelObj
                                                      ?.sliderofferbannertitlItemList[
                                                  index] ??
                                              SliderofferbannertitlItemModel();
                                          return SliderofferbannertitlItemWidget(
                                              model);
                                        });
                                  })),
                              BlocBuilder<DashboardBloc, DashboardState>(
                                  builder: (context, state) {
                                return Container(
                                    height: getVerticalSize(8),
                                    margin: getMargin(left: 135, top: 16),
                                    child: AnimatedSmoothIndicator(
                                        activeIndex: state.silderIndex,
                                        count: state
                                                .dashboardModelObj
                                                ?.sliderofferbannertitlItemList
                                                .length ??
                                            0,
                                        axisDirection: Axis.horizontal,
                                        effect: ScrollingDotsEffect(
                                            spacing: 8,
                                            activeDotColor:
                                                ColorConstant.lightBlueA200,
                                            dotColor: ColorConstant.blue50,
                                            dotHeight: getVerticalSize(8),
                                            dotWidth: getHorizontalSize(8))));
                              }),
                              Padding(
                                  padding: getPadding(top: 25, right: 16),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("lbl_category".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsBold14Indigo900
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.5))),
                                        GestureDetector(
                                            onTap: () {
                                              onTapTxtMorecategorylin(context);
                                            },
                                            child: Text("lbl_more_category".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsBold14LightblueA200
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.5))))
                                      ])),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      height: getVerticalSize(118),
                                      child: BlocSelector<DashboardBloc,
                                              DashboardState, DashboardModel?>(
                                          selector: (state) =>
                                              state.dashboardModelObj,
                                          builder:
                                              (context, dashboardModelObj) {
                                            return ListView.separated(
                                                padding: getPadding(top: 10),
                                                scrollDirection:
                                                    Axis.horizontal,
                                                separatorBuilder:
                                                    (context, index) {
                                                  return SizedBox(
                                                      height:
                                                          getVerticalSize(12));
                                                },
                                                itemCount: dashboardModelObj
                                                        ?.categoriesItemList
                                                        .length ??
                                                    0,
                                                itemBuilder: (context, index) {
                                                  CategoriesItemModel model =
                                                      dashboardModelObj
                                                                  ?.categoriesItemList[
                                                              index] ??
                                                          CategoriesItemModel();
                                                  return CategoriesItemWidget(
                                                      model);
                                                });
                                          }))),
                              GestureDetector(
                                  onTap: () {
                                    onTapRowflashsale(context);
                                  },
                                  child: Padding(
                                      padding: getPadding(top: 23, right: 16),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("lbl_flash_sale".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsBold14Indigo900
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.5))),
                                            Text("lbl_see_more".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsBold14LightblueA200
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.5)))
                                          ]))),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      height: getVerticalSize(250),
                                      child: BlocSelector<DashboardBloc,
                                              DashboardState, DashboardModel?>(
                                          selector: (state) =>
                                              state.dashboardModelObj,
                                          builder:
                                              (context, dashboardModelObj) {
                                            return ListView.separated(
                                                padding: getPadding(top: 12),
                                                scrollDirection:
                                                    Axis.horizontal,
                                                separatorBuilder:
                                                    (context, index) {
                                                  return SizedBox(
                                                      height:
                                                          getVerticalSize(16));
                                                },
                                                itemCount: dashboardModelObj
                                                        ?.flashsaleItemList
                                                        .length ??
                                                    0,
                                                itemBuilder: (context, index) {
                                                  FlashsaleItemModel model =
                                                      dashboardModelObj
                                                                  ?.flashsaleItemList[
                                                              index] ??
                                                          FlashsaleItemModel();
                                                  return FlashsaleItemWidget(
                                                      model, onTapProduct: () {
                                                    onTapProduct(context);
                                                  });
                                                });
                                          }))),
                              GestureDetector(
                                  onTap: () {
                                    onTapMegasaleheader(context);
                                  },
                                  child: Padding(
                                      padding: getPadding(top: 23, right: 16),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                                padding: getPadding(top: 1),
                                                child: Text("lbl_mega_sale".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsBold14Indigo900
                                                        .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                                    0.5)))),
                                            Padding(
                                                padding: getPadding(bottom: 1),
                                                child: Text("lbl_see_more".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsBold14LightblueA200
                                                        .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                                    0.5))))
                                          ]))),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      height: getVerticalSize(248),
                                      child: BlocSelector<DashboardBloc,
                                              DashboardState, DashboardModel?>(
                                          selector: (state) =>
                                              state.dashboardModelObj,
                                          builder:
                                              (context, dashboardModelObj) {
                                            return ListView.separated(
                                                padding: getPadding(top: 10),
                                                scrollDirection:
                                                    Axis.horizontal,
                                                separatorBuilder:
                                                    (context, index) {
                                                  return SizedBox(
                                                      height:
                                                          getVerticalSize(16));
                                                },
                                                itemCount: dashboardModelObj
                                                        ?.megasaleItemList
                                                        .length ??
                                                    0,
                                                itemBuilder: (context, index) {
                                                  MegasaleItemModel model =
                                                      dashboardModelObj
                                                                  ?.megasaleItemList[
                                                              index] ??
                                                          MegasaleItemModel();
                                                  return MegasaleItemWidget(
                                                      model,
                                                      onTapMegaSaleProduct: () {
                                                    onTapMegaSaleProduct(
                                                        context);
                                                  });
                                                });
                                          }))),
                              CustomImageView(
                                  imagePath:
                                      ImageConstant.imgRecomendedproduct206x343,
                                  height: getVerticalSize(206),
                                  width: getHorizontalSize(343),
                                  radius: BorderRadius.circular(
                                      getHorizontalSize(5)),
                                  margin: getMargin(top: 29)),
                              Padding(
                                  padding: getPadding(top: 16, right: 16),
                                  child: BlocSelector<DashboardBloc,
                                          DashboardState, DashboardModel?>(
                                      selector: (state) =>
                                          state.dashboardModelObj,
                                      builder: (context, dashboardModelObj) {
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
                                            itemCount: dashboardModelObj
                                                    ?.dashboardItemList
                                                    .length ??
                                                0,
                                            itemBuilder: (context, index) {
                                              DashboardItemModel model =
                                                  dashboardModelObj
                                                              ?.dashboardItemList[
                                                          index] ??
                                                      DashboardItemModel();
                                              return DashboardItemWidget(model,
                                                  onTapProducts: () {
                                                onTapProducts(context);
                                              });
                                            });
                                      }))
                            ]))))));
  }

  onTapTxtMorecategorylin(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.listCategoryScreen);
  }

  onTapRowflashsale(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.offerScreen);
  }

  onTapMegasaleheader(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.offerScreen);
  }

  onTapTxtSearchproduct(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.searchScreen);
  }

  onTapDownload(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.favoriteProductScreen);
  }

  onTapNotification(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.notificationOneScreen);
  }

  onTapProduct(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.productDetailScreen);
  }

  onTapProducts(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.productDetailScreen);
  }

  onTapMegaSaleProduct(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.productDetailScreen,
    );
  }
}
