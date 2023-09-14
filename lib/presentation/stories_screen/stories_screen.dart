import '../stories_screen/widgets/listellipsefifteen1_item_widget.dart';
import '../stories_screen/widgets/listnineteen1_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:rushabh_s_application1/core/app_export.dart';
import 'package:rushabh_s_application1/presentation/messages_page/messages_page.dart';
import 'package:rushabh_s_application1/presentation/notifications_page/notifications_page.dart';
import 'package:rushabh_s_application1/presentation/profile_page/profile_page.dart';
import 'package:rushabh_s_application1/presentation/stream_tab_container_page/stream_tab_container_page.dart';
import 'package:rushabh_s_application1/presentation/trending_tab_container_page/trending_tab_container_page.dart';
import 'package:rushabh_s_application1/widgets/app_bar/appbar_iconbutton.dart';
import 'package:rushabh_s_application1/widgets/app_bar/appbar_searchview.dart';
import 'package:rushabh_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:rushabh_s_application1/widgets/custom_bottom_bar.dart';

class StoriesScreen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  TextEditingController group9078Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            50,
          ),
          title: AppbarSearchview(
            margin: getMargin(
              left: 16,
            ),
            hintText: "Search",
            controller: group9078Controller,
          ),
          actions: [
            AppbarIconbutton(
              svgPath: ImageConstant.imgPlus,
              margin: getMargin(
                left: 16,
                top: 5,
                right: 16,
                bottom: 5,
              ),
            ),
          ],
        ),
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            top: 22,
            bottom: 22,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  left: 16,
                ),
                child: Text(
                  "Stories",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterBold24,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: getVerticalSize(
                    112,
                  ),
                  child: ListView.separated(
                    padding: getPadding(
                      left: 16,
                      top: 24,
                      right: 14,
                    ),
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: getVerticalSize(
                          16,
                        ),
                      );
                    },
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Listellipsefifteen1ItemWidget();
                    },
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  margin: getMargin(
                    left: 16,
                    top: 22,
                    right: 16,
                  ),
                  padding: getPadding(
                    left: 16,
                    top: 21,
                    right: 16,
                    bottom: 21,
                  ),
                  decoration: AppDecoration.outlineBlack90019.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder15,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 3,
                        ),
                        child: Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgEllipse2150x501,
                              height: getSize(
                                50,
                              ),
                              width: getSize(
                                50,
                              ),
                              radius: BorderRadius.circular(
                                getHorizontalSize(
                                  25,
                                ),
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 16,
                                top: 8,
                                bottom: 4,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Rizal Reynaldhi",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterMedium18,
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 2,
                                    ),
                                    child: Text(
                                      "35 minutes ago",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          AppStyle.txtInterMedium10Bluegray100,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgGroup8916,
                              height: getVerticalSize(
                                6,
                              ),
                              width: getHorizontalSize(
                                30,
                              ),
                              margin: getMargin(
                                left: 124,
                                top: 22,
                                bottom: 22,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: getHorizontalSize(
                          332,
                        ),
                        margin: getMargin(
                          top: 23,
                          right: 17,
                        ),
                        child: Text(
                          "Most people never appreciate what he does but instead they see the point of his fault for their own pleasure. ",
                          maxLines: null,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterRegular16,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 20,
                        ),
                        child: Row(
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgLightbulb,
                              height: getVerticalSize(
                                17,
                              ),
                              width: getHorizontalSize(
                                19,
                              ),
                              margin: getMargin(
                                top: 5,
                                bottom: 3,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 8,
                                top: 5,
                                bottom: 4,
                              ),
                              child: Text(
                                "2200",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterRegular12,
                              ),
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgUser18x19,
                              height: getVerticalSize(
                                18,
                              ),
                              width: getHorizontalSize(
                                19,
                              ),
                              margin: getMargin(
                                left: 29,
                                top: 4,
                                bottom: 3,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 8,
                                top: 6,
                                bottom: 3,
                              ),
                              child: Text(
                                "800",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterRegular12,
                              ),
                            ),
                            Container(
                              height: getVerticalSize(
                                25,
                              ),
                              width: getHorizontalSize(
                                54,
                              ),
                              margin: getMargin(
                                left: 155,
                              ),
                              child: Stack(
                                alignment: Alignment.centerRight,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgEllipse3025x25,
                                    height: getSize(
                                      25,
                                    ),
                                    width: getSize(
                                      25,
                                    ),
                                    radius: BorderRadius.circular(
                                      getHorizontalSize(
                                        12,
                                      ),
                                    ),
                                    alignment: Alignment.centerLeft,
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgEllipse3125x25,
                                    height: getSize(
                                      25,
                                    ),
                                    width: getSize(
                                      25,
                                    ),
                                    radius: BorderRadius.circular(
                                      getHorizontalSize(
                                        12,
                                      ),
                                    ),
                                    alignment: Alignment.centerRight,
                                    margin: getMargin(
                                      right: 13,
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgEllipse3225x25,
                                    height: getSize(
                                      25,
                                    ),
                                    width: getSize(
                                      25,
                                    ),
                                    radius: BorderRadius.circular(
                                      getHorizontalSize(
                                        12,
                                      ),
                                    ),
                                    alignment: Alignment.centerRight,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 16,
                  top: 22,
                ),
                child: Text(
                  "Events",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterBold32DeeppurpleA200,
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: getVerticalSize(
                    212,
                  ),
                  child: ListView.separated(
                    padding: getPadding(
                      left: 16,
                      top: 12,
                    ),
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: getVerticalSize(
                          16,
                        ),
                      );
                    },
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Listnineteen1ItemWidget();
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            Navigator.pushNamed(
                navigatorKey.currentContext!, getCurrentRoute(type));
          },
        ),
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.trendingTabContainerPage;
      case BottomBarEnum.Streams:
        return AppRoutes.streamTabContainerPage;
      case BottomBarEnum.Messages:
        return AppRoutes.messagesPage;
      case BottomBarEnum.Notifications:
        return AppRoutes.notificationsPage;
      case BottomBarEnum.Profile:
        return AppRoutes.profilePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.trendingTabContainerPage:
        return TrendingTabContainerPage();
      case AppRoutes.streamTabContainerPage:
        return StreamTabContainerPage();
      case AppRoutes.messagesPage:
        return MessagesPage();
      case AppRoutes.notificationsPage:
        return NotificationsPage();
      case AppRoutes.profilePage:
        return ProfilePage();
      default:
        return DefaultWidget();
    }
  }
}
