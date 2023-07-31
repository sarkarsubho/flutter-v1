import '../models/showonly_item_model.dart';
import 'package:fashon_bazar/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ShowonlyItemWidget extends StatelessWidget {
  ShowonlyItemWidget(this.showonlyItemModelObj, {this.onSelectedChipView});

  ShowonlyItemModel showonlyItemModelObj;

  Function(bool)? onSelectedChipView;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        canvasColor: Colors.transparent,
      ),
      child: RawChip(
        padding: getPadding(
          left: 16,
          right: 16,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          showonlyItemModelObj.freereturnsTxt,
          textAlign: TextAlign.left,
          style: TextStyle(
            color: showonlyItemModelObj.isSelected
                ? ColorConstant.lightBlueA200
                : ColorConstant.blueGray300,
            fontSize: getFontSize(
              12,
            ),
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
          ),
        ),
        selected: showonlyItemModelObj.isSelected,
        backgroundColor: Colors.transparent,
        selectedColor: ColorConstant.lightBlueA20019,
        shape: showonlyItemModelObj.isSelected
            ? RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    5,
                  ),
                ),
              )
            : RoundedRectangleBorder(
                side: BorderSide(
                  color: ColorConstant.blue50,
                  width: getHorizontalSize(
                    1,
                  ),
                ),
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    5,
                  ),
                ),
              ),
        onSelected: (value) {
          onSelectedChipView?.call(value);
        },
      ),
    );
  }
}
