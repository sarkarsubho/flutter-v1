import '../models/flashsale_item_model.dart';
import 'package:fashon_bazar/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FlashsaleItemWidget extends StatelessWidget {
  FlashsaleItemWidget(this.flashsaleItemModelObj, {this.onTapProduct});

  FlashsaleItemModel flashsaleItemModelObj;

  VoidCallback? onTapProduct;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: GestureDetector(
          onTap: () {
            onTapProduct?.call();
          },
          child: Container(
            margin: getMargin(
              right: 16,
            ),
            padding: getPadding(
              all: 16,
            ),
            decoration: AppDecoration.outlineBlue501.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder5,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgProductimage109x1091,
                  height: getSize(
                    109,
                  ),
                  width: getSize(
                    109,
                  ),
                  radius: BorderRadius.circular(
                    getHorizontalSize(
                      5,
                    ),
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    105,
                  ),
                  margin: getMargin(
                    top: 7,
                  ),
                  child: Text(
                    "msg_fs_nike_air_m".tr,
                    maxLines: null,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsBold12Indigo900.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.5,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 11,
                  ),
                  child: Text(
                    "lbl_299_43".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsBold12.copyWith(
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
                  child: Row(
                    children: [
                      Text(
                        "lbl_534_33".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsRegular10.copyWith(
                          letterSpacing: getHorizontalSize(
                            0.5,
                          ),
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 8,
                        ),
                        child: Text(
                          "lbl_24_off".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsBold10.copyWith(
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
        ),
      ),
    );
  }
}
