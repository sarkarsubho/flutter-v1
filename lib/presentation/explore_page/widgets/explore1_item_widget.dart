import '../models/explore1_item_model.dart';
import 'package:fashon_bazar/core/app_export.dart';
import 'package:fashon_bazar/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Explore1ItemWidget extends StatelessWidget {
  Explore1ItemWidget(this.explore1ItemModelObj);

  Explore1ItemModel explore1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Padding(
            padding: getPadding(
              right: 10,
              bottom: 14,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomIconButton(
                  height: 70,
                  width: 70,
                  child: CustomImageView(
                    svgPath: ImageConstant.imgClock,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 8,
                  ),
                  child: Text(
                    explore1ItemModelObj.dressTxt,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsRegular10.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.5,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: getPadding(
              left: 10,
              right: 10,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomIconButton(
                  height: 70,
                  width: 70,
                  child: CustomImageView(
                    svgPath: ImageConstant.imgTicket70x70,
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    41,
                  ),
                  margin: getMargin(
                    top: 9,
                  ),
                  child: Text(
                    explore1ItemModelObj.womantshirtTxt,
                    maxLines: null,
                    textAlign: TextAlign.center,
                    style: AppStyle.txtPoppinsRegular10.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.5,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: getPadding(
              left: 10,
              right: 10,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomIconButton(
                  height: 70,
                  width: 70,
                  child: CustomImageView(
                    svgPath: ImageConstant.imgWomanpantsicon,
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    41,
                  ),
                  margin: getMargin(
                    top: 9,
                  ),
                  child: Text(
                    explore1ItemModelObj.womanpantsTxt,
                    maxLines: null,
                    textAlign: TextAlign.center,
                    style: AppStyle.txtPoppinsRegular10.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.5,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: getPadding(
              left: 10,
              bottom: 14,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomIconButton(
                  height: 70,
                  width: 70,
                  child: CustomImageView(
                    svgPath: ImageConstant.imgTrash1,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 7,
                  ),
                  child: Text(
                    explore1ItemModelObj.skirtTxt,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsRegular10.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.5,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
