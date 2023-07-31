import '../models/address_item_model.dart';
import 'package:fashon_bazar/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AddressItemWidget extends StatelessWidget {
  AddressItemWidget(this.addressItemModelObj);

  AddressItemModel addressItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: Container(
        padding: getPadding(
          left: 24,
          top: 20,
          right: 24,
          bottom: 22,
        ),
        decoration: AppDecoration.outlineLightblueA200.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder5,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              addressItemModelObj.priscekilaTxt,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtPoppinsBold14Indigo900.copyWith(
                letterSpacing: getHorizontalSize(
                  0.5,
                ),
              ),
            ),
            Container(
              width: getHorizontalSize(
                264,
              ),
              margin: getMargin(
                top: 19,
                right: 30,
              ),
              child: Text(
                "msg_3711_spring_hil".tr,
                maxLines: null,
                textAlign: TextAlign.left,
                style: AppStyle.txtPoppinsRegular12.copyWith(
                  letterSpacing: getHorizontalSize(
                    0.5,
                  ),
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                top: 20,
              ),
              child: Text(
                "lbl_99_1234567890".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtPoppinsRegular12.copyWith(
                  letterSpacing: getHorizontalSize(
                    0.5,
                  ),
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                top: 19,
                bottom: 3,
              ),
              child: Row(
                children: [
                  Text(
                    "lbl_edit".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsBold14LightblueA200.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.5,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 32,
                    ),
                    child: Text(
                      "lbl_delete".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsBold14Pink300.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.5,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
