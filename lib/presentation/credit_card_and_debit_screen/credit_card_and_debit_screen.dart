import '../credit_card_and_debit_screen/widgets/listvolume_item_widget.dart';
import 'bloc/credit_card_and_debit_bloc.dart';
import 'models/credit_card_and_debit_model.dart';
import 'models/listvolume_item_model.dart';
import 'package:fashon_bazar/core/app_export.dart';
import 'package:fashon_bazar/widgets/app_bar/appbar_image.dart';
import 'package:fashon_bazar/widgets/app_bar/appbar_title.dart';
import 'package:fashon_bazar/widgets/app_bar/custom_app_bar.dart';
import 'package:fashon_bazar/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class CreditCardAndDebitScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<CreditCardAndDebitBloc>(
        create: (context) => CreditCardAndDebitBloc(CreditCardAndDebitState(
            creditCardAndDebitModelObj: CreditCardAndDebitModel()))
          ..add(CreditCardAndDebitInitialEvent()),
        child: CreditCardAndDebitScreen());
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
                    margin: getMargin(left: 16, top: 16, bottom: 15),
                    onTap: () {
                      onTapArrowleft21(context);
                    }),
                title: AppbarTitle(
                    text: "msg_credit_card_and".tr,
                    margin: getMargin(left: 12))),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 9, bottom: 9),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 16, top: 8, right: 16),
                          child: BlocSelector<
                                  CreditCardAndDebitBloc,
                                  CreditCardAndDebitState,
                                  CreditCardAndDebitModel?>(
                              selector: (state) =>
                                  state.creditCardAndDebitModelObj,
                              builder: (context, creditCardAndDebitModelObj) {
                                return ListView.separated(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    separatorBuilder: (context, index) {
                                      return SizedBox(
                                          height: getVerticalSize(14));
                                    },
                                    itemCount: creditCardAndDebitModelObj
                                            ?.listvolumeItemList.length ??
                                        0,
                                    itemBuilder: (context, index) {
                                      ListvolumeItemModel model =
                                          creditCardAndDebitModelObj
                                                  ?.listvolumeItemList[index] ??
                                              ListvolumeItemModel();
                                      return ListvolumeItemWidget(model,
                                          onTapCreditcard: () {
                                        onTapCreditcard(context);
                                      });
                                    });
                              })),
                      Spacer()
                    ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(57),
                text: "lbl_add_card".tr,
                margin: getMargin(left: 16, right: 16, bottom: 2),
                onTap: () {
                  onTapAddcard(context);
                })));
  }

  onTapCreditcard(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.lailyfaFebrinaCardScreen);
  }

  onTapAddcard(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.addCardScreen,
    );
  }

  onTapArrowleft21(BuildContext context) {
    NavigatorService.goBack();
  }
}
