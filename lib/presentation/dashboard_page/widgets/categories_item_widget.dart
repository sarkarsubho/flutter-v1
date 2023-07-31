import '../models/categories_item_model.dart';
import 'package:fashon_bazar/core/app_export.dart';
import 'package:fashon_bazar/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CategoriesItemWidget extends StatelessWidget {
  CategoriesItemWidget(this.categoriesItemModelObj);

  CategoriesItemModel categoriesItemModelObj;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: getPadding(
            right: 12,
            bottom: 15,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomIconButton(
                height: 70,
                width: 70,
                child: CustomImageView(
                  svgPath: ImageConstant.imgArrowleftLightBlueA20070x70,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 7,
                ),
                child: Text(
                  categoriesItemModelObj.manshirtTxt,
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
    );
  }
}
