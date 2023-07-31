import 'bloc/success_bloc.dart';
import 'models/success_model.dart';
import 'package:fashon_bazar/core/app_export.dart';
import 'package:fashon_bazar/widgets/custom_button.dart';
import 'package:fashon_bazar/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<SuccessBloc>(
        create: (context) =>
            SuccessBloc(SuccessState(successModelObj: SuccessModel()))
              ..add(SuccessInitialEvent()),
        child: SuccessScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SuccessBloc, SuccessState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.whiteA700,
              body: Container(
                  width: double.maxFinite,
                  padding: getPadding(left: 16, right: 16),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomIconButton(
                            height: 72,
                            width: 72,
                            variant: IconButtonVariant.OutlineLightblueA2003d,
                            child: CustomImageView(
                                svgPath: ImageConstant.imgCheckmark)),
                        Padding(
                            padding: getPadding(top: 15),
                            child: Text("lbl_success".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsBold24Indigo900
                                    .copyWith(
                                        letterSpacing:
                                            getHorizontalSize(0.5)))),
                        Padding(
                            padding: getPadding(top: 11),
                            child: Text("msg_thank_you_for_s".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsRegular12Indigo90087
                                    .copyWith(
                                        letterSpacing:
                                            getHorizontalSize(0.5)))),
                        CustomButton(
                            height: getVerticalSize(57),
                            text: "lbl_back_to_order".tr,
                            margin: getMargin(top: 16, bottom: 5),
                            onTap: () {
                              onTapBacktoorder(context);
                            })
                      ]))));
    });
  }

  onTapBacktoorder(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.orderScreen,
    );
  }
}
