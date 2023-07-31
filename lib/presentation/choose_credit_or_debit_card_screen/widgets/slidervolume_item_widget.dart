import '../models/slidervolume_item_model.dart';
import 'package:fashon_bazar/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SlidervolumeItemWidget extends StatelessWidget {
  SlidervolumeItemWidget(this.slidervolumeItemModelObj);

  SlidervolumeItemModel slidervolumeItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 21,
        top: 16,
        right: 21,
        bottom: 16,
      ),
      decoration: AppDecoration.fillLightblueA200.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgVolume,
            height: getVerticalSize(
              22,
            ),
            width: getHorizontalSize(
              36,
            ),
            margin: getMargin(
              left: 3,
              top: 7,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 30,
            ),
            child: Text(
              "msg_6326_9124".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtPoppinsBold24.copyWith(
                letterSpacing: getHorizontalSize(
                  0.5,
                ),
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              top: 17,
            ),
            child: Row(
              children: [
                Padding(
                  padding: getPadding(
                    top: 2,
                  ),
                  child: Text(
                    "lbl_card_holder".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsRegular10WhiteA70087.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.5,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 37,
                    bottom: 2,
                  ),
                  child: Text(
                    "lbl_card_save".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsRegular10WhiteA70087.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.5,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              top: 9,
            ),
            child: Row(
              children: [
                Padding(
                  padding: getPadding(
                    bottom: 2,
                  ),
                  child: Text(
                    "lbl_dominic_ovo".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsBold10WhiteA700.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.5,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 44,
                    top: 2,
                  ),
                  child: Text(
                    "lbl_06_24".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsBold10WhiteA700.copyWith(
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
    );
  }
}
