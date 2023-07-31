import '../address_screen/widgets/address_item_widget.dart';
import 'bloc/address_bloc.dart';
import 'models/address_item_model.dart';
import 'models/address_model.dart';
import 'package:fashon_bazar/core/app_export.dart';
import 'package:fashon_bazar/widgets/app_bar/appbar_image.dart';
import 'package:fashon_bazar/widgets/app_bar/appbar_title.dart';
import 'package:fashon_bazar/widgets/app_bar/custom_app_bar.dart';
import 'package:fashon_bazar/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class AddressScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<AddressBloc>(
        create: (context) =>
            AddressBloc(AddressState(addressModelObj: AddressModel()))
              ..add(AddressInitialEvent()),
        child: AddressScreen());
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
                      onTapArrowleft19(context);
                    }),
                title: AppbarTitle(
                    text: "lbl_address".tr, margin: getMargin(left: 12))),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 10, bottom: 5),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 16, top: 10, right: 16),
                          child: BlocSelector<AddressBloc, AddressState,
                                  AddressModel?>(
                              selector: (state) => state.addressModelObj,
                              builder: (context, addressModelObj) {
                                return ListView.separated(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    separatorBuilder: (context, index) {
                                      return SizedBox(
                                          height: getVerticalSize(18));
                                    },
                                    itemCount: addressModelObj
                                            ?.addressItemList.length ??
                                        0,
                                    itemBuilder: (context, index) {
                                      AddressItemModel model = addressModelObj
                                              ?.addressItemList[index] ??
                                          AddressItemModel();
                                      return AddressItemWidget(model);
                                    });
                              })),
                      Spacer()
                    ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(57),
                text: "lbl_add_address".tr,
                margin: getMargin(left: 16, right: 16, bottom: 3),
                onTap: () {
                  onTapAddaddress(context);
                })));
  }

  onTapAddaddress(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.addAddressScreen,
    );
  }

  onTapArrowleft19(BuildContext context) {
    NavigatorService.goBack();
  }
}
