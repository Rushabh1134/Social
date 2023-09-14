import 'package:flutter/material.dart';
import 'package:rushabh_s_application1/core/app_export.dart';
import 'package:rushabh_s_application1/presentation/messages_page/messages_page.dart';
import 'package:rushabh_s_application1/presentation/notifications_page/notifications_page.dart';
import 'package:rushabh_s_application1/presentation/profile_page/profile_page.dart';
import 'package:rushabh_s_application1/presentation/stream_tab_container_page/stream_tab_container_page.dart';
import 'package:rushabh_s_application1/presentation/trending_tab_container_page/trending_tab_container_page.dart';
import 'package:rushabh_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:rushabh_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:rushabh_s_application1/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class DetailedProfileScreen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(50),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleftDeepPurpleA200,
                    margin: getMargin(left: 16, top: 13, bottom: 13),
                    onTap: () {
                      onTapArrowleft6(context);
                    }),
                actions: [
                  Padding(
                      padding:
                          getPadding(left: 16, top: 16, right: 16, bottom: 13),
                      child: Text("Done",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterSemiBold16))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 21, bottom: 21),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 16),
                              child: Text("Profile",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtInterBold32DeeppurpleA200))),
                      Padding(
                          padding: getPadding(top: 21),
                          child: Divider(
                              height: getVerticalSize(2),
                              thickness: getVerticalSize(2),
                              color: ColorConstant.deepPurple50)),
                      Container(
                          height: getVerticalSize(126),
                          width: getHorizontalSize(124),
                          margin: getMargin(top: 30),
                          child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgEllipse14120x120,
                                    height: getSize(120),
                                    width: getSize(120),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(60)),
                                    alignment: Alignment.topLeft),
                                Align(
                                    alignment: Alignment.bottomRight,
                                    child: Container(
                                        height: getSize(40),
                                        width: getSize(40),
                                        child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgClose40x40,
                                                  height: getSize(40),
                                                  width: getSize(40),
                                                  alignment: Alignment.center),
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgEdit,
                                                  height: getSize(24),
                                                  width: getSize(24),
                                                  alignment: Alignment.center)
                                            ])))
                              ])),
                      Padding(
                          padding: getPadding(left: 16, top: 44, right: 16),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Username",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterRegular18Gray600),
                                Text("Rosalia",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterRegular18Black900)
                              ])),
                      Padding(
                          padding: getPadding(left: 16, top: 29, right: 16),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(bottom: 1),
                                    child: Text("Email",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtInterRegular18Gray600)),
                                Padding(
                                    padding: getPadding(top: 1),
                                    child: Text("xyz@gmail.com",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtInterRegular18Black900))
                              ])),
                      Padding(
                          padding: getPadding(left: 16, top: 28, right: 16),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Phone",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterRegular18Gray600),
                                Text("+12 3456 789 000",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterRegular18Black900)
                              ])),
                      Padding(
                          padding: getPadding(top: 39),
                          child: Divider(
                              height: getVerticalSize(2),
                              thickness: getVerticalSize(2),
                              color: ColorConstant.deepPurple50)),
                      Padding(
                          padding: getPadding(left: 16, top: 30, right: 16),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Gender",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterRegular18Gray600),
                                Text("Female",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterRegular18Black900)
                              ])),
                      Padding(
                          padding: getPadding(
                              left: 16, top: 29, right: 16, bottom: 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Date of birth",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterRegular18Gray600),
                                Text("21/08/1992",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterRegular18Black900)
                              ]))
                    ])),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Navigator.pushNamed(
                  navigatorKey.currentContext!, getCurrentRoute(type));
            })));
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

  onTapArrowleft6(BuildContext context) {
    Navigator.pop(context);
  }
}
