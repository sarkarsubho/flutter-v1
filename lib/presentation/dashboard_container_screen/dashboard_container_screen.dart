import 'bloc/dashboard_container_bloc.dart';
import 'models/dashboard_container_model.dart';
import 'package:fashon_bazar/core/app_export.dart';
import 'package:fashon_bazar/presentation/account_page/account_page.dart';
import 'package:fashon_bazar/presentation/cart_page/cart_page.dart';
import 'package:fashon_bazar/presentation/dashboard_page/dashboard_page.dart';
import 'package:fashon_bazar/presentation/explore_page/explore_page.dart';
import 'package:fashon_bazar/presentation/offer_screen_one_page/offer_screen_one_page.dart';
import 'package:fashon_bazar/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class DashboardContainerScreen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    var arg =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    return BlocProvider<DashboardContainerBloc>(
        create: (context) => DashboardContainerBloc(DashboardContainerState(
            dashboardContainerModelObj: DashboardContainerModel(),
            id: arg[NavigationArgs.id],
            token: arg[NavigationArgs.token]))
          ..add(DashboardContainerInitialEvent()),
        child: DashboardContainerScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardContainerBloc, DashboardContainerState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.whiteA700,
              body: Navigator(
                  key: navigatorKey,
                  initialRoute: AppRoutes.dashboardPage,
                  onGenerateRoute: (routeSetting) => PageRouteBuilder(
                      pageBuilder: (ctx, ani, ani1) =>
                          getCurrentPage(context, routeSetting.name!),
                      transitionDuration: Duration(seconds: 0))),
              bottomNavigationBar:
                  CustomBottomBar(onChanged: (BottomBarEnum type) {
                Navigator.pushNamed(
                    navigatorKey.currentContext!, getCurrentRoute(type));
              })));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.dashboardPage;
      case BottomBarEnum.Explore:
        return AppRoutes.explorePage;
      case BottomBarEnum.Cart:
        return AppRoutes.cartPage;
      case BottomBarEnum.Offer:
        return AppRoutes.offerScreenOnePage;
      case BottomBarEnum.Account:
        return AppRoutes.accountPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.dashboardPage:
        return DashboardPage.builder(context);
      case AppRoutes.explorePage:
        return ExplorePage.builder(context);
      case AppRoutes.cartPage:
        return CartPage.builder(context);
      case AppRoutes.offerScreenOnePage:
        return OfferScreenOnePage.builder(context);
      case AppRoutes.accountPage:
        return AccountPage.builder(context);
      default:
        return DefaultWidget();
    }
  }
}
