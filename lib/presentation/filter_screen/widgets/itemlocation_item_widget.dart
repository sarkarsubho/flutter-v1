import '../models/itemlocation_item_model.dart';
import 'package:fashon_bazar/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ItemlocationItemWidget extends StatelessWidget {
  ItemlocationItemWidget(this.itemlocationItemModelObj,
      {this.onSelectedChipView});

  ItemlocationItemModel itemlocationItemModelObj;

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
          itemlocationItemModelObj.usonlyTxt,
          textAlign: TextAlign.left,
          style: TextStyle(
            color: itemlocationItemModelObj.isSelected
                ? ColorConstant.lightBlueA200
                : ColorConstant.blueGray300,
            fontSize: getFontSize(
              12,
            ),
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
          ),
        ),
        selected: itemlocationItemModelObj.isSelected,
        backgroundColor: Colors.transparent,
        selectedColor: ColorConstant.lightBlueA20019,
        shape: itemlocationItemModelObj.isSelected
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
