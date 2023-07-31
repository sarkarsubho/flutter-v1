import '../favorite_product_screen/widgets/gridnikeairmaxreact_item_widget.dart';
import 'bloc/favorite_product_bloc.dart';
import 'models/favorite_product_model.dart';
import 'models/gridnikeairmaxreact_item_model.dart';
import 'package:fashon_bazar/core/app_export.dart';
import 'package:fashon_bazar/widgets/app_bar/appbar_image.dart';
import 'package:fashon_bazar/widgets/app_bar/appbar_title.dart';
import 'package:fashon_bazar/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class FavoriteProductScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<FavoriteProductBloc>(
        create: (context) => FavoriteProductBloc(FavoriteProductState(
            favoriteProductModelObj: FavoriteProductModel()))
          ..add(FavoriteProductInitialEvent()),
        child: FavoriteProductScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(56),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 16, bottom: 15),
                    onTap: () {
                      onTapArrowleft1(context);
                    }),
                title: AppbarTitle(
                    text: "msg_favorite_produc".tr,
                    margin: getMargin(left: 12))),
            body: Padding(
                padding: getPadding(left: 16, top: 8, right: 16),
                child: BlocSelector<FavoriteProductBloc, FavoriteProductState,
                        FavoriteProductModel?>(
                    selector: (state) => state.favoriteProductModelObj,
                    builder: (context, favoriteProductModelObj) {
                      return GridView.builder(
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  mainAxisExtent: getVerticalSize(283),
                                  crossAxisCount: 2,
                                  mainAxisSpacing: getHorizontalSize(13),
                                  crossAxisSpacing: getHorizontalSize(13)),
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: favoriteProductModelObj
                                  ?.gridnikeairmaxreactItemList.length ??
                              0,
                          itemBuilder: (context, index) {
                            GridnikeairmaxreactItemModel model =
                                favoriteProductModelObj
                                        ?.gridnikeairmaxreactItemList[index] ??
                                    GridnikeairmaxreactItemModel();
                            return GridnikeairmaxreactItemWidget(model,
                                onTapProduct: () {
                              onTapProduct(context);
                            });
                          });
                    }))));
  }

  onTapProduct(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.productDetailScreen);
  }

  onTapArrowleft1(BuildContext context) {
    NavigatorService.goBack();
  }
}
