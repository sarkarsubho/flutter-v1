import 'package:fashon_bazar/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomSearchView extends StatelessWidget {
  CustomSearchView(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.width,
      this.margin,
      this.controller,
      this.focusNode,
      this.hintText,
      this.prefix,
      this.prefixConstraints,
      this.suffix,
      this.suffixConstraints});

  SearchViewShape? shape;

  SearchViewPadding? padding;

  SearchViewVariant? variant;

  SearchViewFontStyle? fontStyle;

  Alignment? alignment;

  double? width;

  EdgeInsetsGeometry? margin;

  TextEditingController? controller;

  FocusNode? focusNode;

  String? hintText;

  Widget? prefix;

  BoxConstraints? prefixConstraints;

  Widget? suffix;

  BoxConstraints? suffixConstraints;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildSearchViewWidget(),
          )
        : _buildSearchViewWidget();
  }

  _buildSearchViewWidget() {
    return Container(
      width: width ?? double.maxFinite,
      margin: margin,
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        style: _setFontStyle(),
        decoration: _buildDecoration(),
      ),
    );
  }

  _buildDecoration() {
    return InputDecoration(
      hintText: hintText ?? "",
      hintStyle: _setFontStyle(),
      border: _setBorderStyle(),
      enabledBorder: _setBorderStyle(),
      focusedBorder: _setBorderStyle(),
      disabledBorder: _setBorderStyle(),
      prefixIcon: prefix,
      prefixIconConstraints: prefixConstraints,
      suffixIcon: suffix,
      suffixIconConstraints: suffixConstraints,
      filled: _setFilled(),
      isDense: true,
      contentPadding: _setPadding(),
    );
  }

  _setFontStyle() {
    switch (fontStyle) {
      case SearchViewFontStyle.PoppinsBold12Indigo90087:
        return TextStyle(
          color: ColorConstant.indigo90087,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
          height: getVerticalSize(
            1.50,
          ),
        );
      default:
        return TextStyle(
          color: ColorConstant.blueGray300,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
          height: getVerticalSize(
            1.50,
          ),
        );
    }
  }

  _setOutlineBorderRadius() {
    switch (shape) {
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            5.00,
          ),
        );
    }
  }

  _setBorderStyle() {
    switch (variant) {
      case SearchViewVariant.OutlineLightblueA200:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.lightBlueA200,
            width: 1,
          ),
        );
      case SearchViewVariant.None:
        return InputBorder.none;
      default:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.blue50,
            width: 1,
          ),
        );
    }
  }

  _setFilled() {
    switch (variant) {
      case SearchViewVariant.OutlineBlue50:
        return false;
      case SearchViewVariant.None:
        return false;
      default:
        return false;
    }
  }

  _setPadding() {
    switch (padding) {
      case SearchViewPadding.PaddingT12:
        return getPadding(
          top: 13,
          bottom: 13,
        );
      default:
        return getPadding(
          top: 14,
          right: 14,
          bottom: 14,
        );
    }
  }
}

enum SearchViewShape {
  RoundedBorder5,
}

enum SearchViewPadding {
  PaddingT13,
  PaddingT12,
}

enum SearchViewVariant {
  None,
  OutlineBlue50,
  OutlineLightblueA200,
}

enum SearchViewFontStyle {
  PoppinsRegular12Bluegray300,
  PoppinsBold12Indigo90087,
}
