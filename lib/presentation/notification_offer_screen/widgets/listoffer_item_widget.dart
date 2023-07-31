import '../models/listoffer_item_model.dart';
import 'package:fashon_bazar/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListofferItemWidget extends StatelessWidget {
  ListofferItemWidget(this.listofferItemModelObj);

  ListofferItemModel listofferItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: getPadding(
        top: 16,
        bottom: 16,
      ),
      decoration: AppDecoration.fillWhiteA700,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgOffer24x24,
            height: getSize(
              24,
            ),
            width: getSize(
              24,
            ),
            margin: getMargin(
              left: 16,
              top: 16,
              bottom: 110,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 12,
              top: 16,
              right: 17,
              bottom: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  listofferItemModelObj.thebesttitleTxt,
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
                    305,
                  ),
                  margin: getMargin(
                    top: 11,
                  ),
                  child: Text(
                    "msg_culpa_cillum_co".tr,
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
                    top: 9,
                  ),
                  child: Text(
                    "msg_april_30_2014".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsRegular10Indigo900.copyWith(
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
