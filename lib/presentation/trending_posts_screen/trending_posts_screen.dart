import '../trending_posts_screen/widgets/trendingposts_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
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
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class TrendingPostsScreen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  TextEditingController group9088Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(50),
                title: AppbarSearchview(
                    margin: getMargin(left: 16),
                    hintText: "Search",
                    controller: group9088Controller),
                actions: [
                  AppbarIconbutton(
                      svgPath: ImageConstant.imgCamera,
                      margin: getMargin(left: 16, top: 5, right: 16, bottom: 5))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 3, bottom: 3),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 16, top: 22),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Trending",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterBold24),
                                Padding(
                                    padding: getPadding(top: 4, bottom: 3),
                                    child: Text("Latest",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterRegular18)),
                                Padding(
                                    padding: getPadding(top: 3, bottom: 4),
                                    child: Text("Discover",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterRegular18)),
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtDailyNew(context);
                                    },
                                    child: Padding(
                                        padding: getPadding(top: 5, bottom: 3),
                                        child: Text("Daily New",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterRegular18)))
                              ])),
                      Padding(
                          padding: getPadding(top: 21),
                          child: StaggeredGridView.countBuilder(
                              shrinkWrap: true,
                              primary: false,
                              crossAxisCount: 4,
                              crossAxisSpacing: getHorizontalSize(16),
                              mainAxisSpacing: getHorizontalSize(16),
                              staggeredTileBuilder: (index) {
                                return StaggeredTile.fit(2);
                              },
                              itemCount: 4,
                              itemBuilder: (context, index) {
                                return TrendingpostsItemWidget();
                              }))
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

  onTapTxtDailyNew(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.dailyNewTabContainerScreen);
  }
}
