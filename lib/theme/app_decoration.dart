import 'package:flutter/material.dart';
import 'package:fashon_bazar/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get outlineLightblueA200 => BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border.all(
          color: ColorConstant.lightBlueA200,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get txtOutlineBlue501 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.blue50,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get txtFillLightblueA20019 => BoxDecoration(
        color: ColorConstant.lightBlueA20019,
      );
  static BoxDecoration get fillIndigoA200 => BoxDecoration(
        color: ColorConstant.indigoA200,
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get fillLightblueA200 => BoxDecoration(
        color: ColorConstant.lightBlueA200,
      );
  static BoxDecoration get txtFillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get outlineBlue501 => BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border.all(
          color: ColorConstant.blue50,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get fillBlue50 => BoxDecoration(
        color: ColorConstant.blue50,
      );
  static BoxDecoration get txtOutlineBlue50 => BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border.all(
          color: ColorConstant.blue50,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get outlineBlue50 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.blue50,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
  static BoxDecoration get txtFillBlue50 => BoxDecoration(
        color: ColorConstant.blue50,
      );
  static BoxDecoration get txtOutlineLightblueA200 => BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border.all(
          color: ColorConstant.lightBlueA200,
          width: getHorizontalSize(
            1,
          ),
        ),
      );
}

class BorderRadiusStyle {
  static BorderRadius roundedBorder8 = BorderRadius.circular(
    getHorizontalSize(
      8,
    ),
  );

  static BorderRadius circleBorder24 = BorderRadius.circular(
    getHorizontalSize(
      24,
    ),
  );

  static BorderRadius roundedBorder5 = BorderRadius.circular(
    getHorizontalSize(
      5,
    ),
  );

  static BorderRadius circleBorder36 = BorderRadius.circular(
    getHorizontalSize(
      36,
    ),
  );

  static BorderRadius txtRoundedBorder5 = BorderRadius.circular(
    getHorizontalSize(
      5,
    ),
  );

  static BorderRadius txtCircleBorder24 = BorderRadius.circular(
    getHorizontalSize(
      24,
    ),
  );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
