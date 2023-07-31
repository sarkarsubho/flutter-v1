import '../models/slider_item_model.dart';
import 'package:fashon_bazar/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SliderItemWidget extends StatelessWidget {
  SliderItemWidget(this.sliderItemModelObj);

  SliderItemModel sliderItemModelObj;

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgProductimage1,
      height: getVerticalSize(
        238,
      ),
      width: getHorizontalSize(
        375,
      ),
    );
  }
}
