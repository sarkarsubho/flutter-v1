import '../choose_credit_or_debit_card_screen/widgets/slidervolume_item_widget.dart';
import 'bloc/choose_credit_or_debit_card_bloc.dart';
import 'models/choose_credit_or_debit_card_model.dart';
import 'models/slidervolume_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fashon_bazar/core/app_export.dart';
import 'package:fashon_bazar/widgets/app_bar/appbar_image.dart';
import 'package:fashon_bazar/widgets/app_bar/appbar_title.dart';
import 'package:fashon_bazar/widgets/app_bar/custom_app_bar.dart';
import 'package:fashon_bazar/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ChooseCreditOrDebitCardScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<ChooseCreditOrDebitCardBloc>(
        create: (context) => ChooseCreditOrDebitCardBloc(
            ChooseCreditOrDebitCardState(
                chooseCreditOrDebitCardModelObj:
                    ChooseCreditOrDebitCardModel()))
          ..add(ChooseCreditOrDebitCardInitialEvent()),
        child: ChooseCreditOrDebitCardScreen());
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
                      onTapArrowleft13(context);
                    }),
                title: AppbarTitle(
                    text: "lbl_choose_card".tr, margin: getMargin(left: 12)),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgPlus28x24,
                      margin:
                          getMargin(left: 16, top: 15, right: 16, bottom: 16),
                      onTap: () {
                        onTapPlus1(context);
                      })
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 27, right: 16, bottom: 27),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      BlocBuilder<ChooseCreditOrDebitCardBloc,
                              ChooseCreditOrDebitCardState>(
                          builder: (context, state) {
                        return CarouselSlider.builder(
                            options: CarouselOptions(
                                height: getVerticalSize(190),
                                initialPage: 0,
                                autoPlay: true,
                                viewportFraction: 1.0,
                                enableInfiniteScroll: false,
                                scrollDirection: Axis.horizontal,
                                onPageChanged: (index, reason) {
                                  state.silderIndex = index;
                                }),
                            itemCount: state.chooseCreditOrDebitCardModelObj
                                    ?.slidervolumeItemList.length ??
                                0,
                            itemBuilder: (context, index, realIndex) {
                              SlidervolumeItemModel model = state
                                      .chooseCreditOrDebitCardModelObj
                                      ?.slidervolumeItemList[index] ??
                                  SlidervolumeItemModel();
                              return SlidervolumeItemWidget(model);
                            });
                      }),
                      BlocBuilder<ChooseCreditOrDebitCardBloc,
                              ChooseCreditOrDebitCardState>(
                          builder: (context, state) {
                        return Container(
                            height: getVerticalSize(8),
                            margin: getMargin(top: 16, bottom: 5),
                            child: AnimatedSmoothIndicator(
                                activeIndex: state.silderIndex,
                                count: state.chooseCreditOrDebitCardModelObj
                                        ?.slidervolumeItemList.length ??
                                    0,
                                axisDirection: Axis.horizontal,
                                effect: ScrollingDotsEffect(
                                    spacing: 8,
                                    activeDotColor: ColorConstant.lightBlueA200,
                                    dotColor: ColorConstant.blue50,
                                    dotHeight: getVerticalSize(8),
                                    dotWidth: getHorizontalSize(8))));
                      })
                    ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(57),
                text: "lbl_pay_766_86".tr,
                margin: getMargin(left: 16, right: 16, bottom: 50),
                onTap: () {
                  onTapPay766EightySix(context);
                })));
  }

  onTapPay766EightySix(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.successScreen,
    );
  }

  onTapArrowleft13(BuildContext context) {
    NavigatorService.goBack();
  }

  onTapPlus1(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.addPaymentScreen,
    );
  }
}
