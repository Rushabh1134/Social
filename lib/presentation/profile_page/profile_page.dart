import '../profile_page/widgets/profile_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:rushabh_s_application1/core/app_export.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillWhiteA700,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgLink,
                                height: getSize(24),
                                width: getSize(24),
                                alignment: Alignment.centerRight,
                                margin: getMargin(top: 13, right: 16)),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: GestureDetector(
                                    onTap: () {
                                      onTapRowellipsefourteen(context);
                                    },
                                    child: Padding(
                                        padding: getPadding(left: 16, top: 37),
                                        child: Row(children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgEllipse1480x80,
                                              height: getSize(80),
                                              width: getSize(80),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(40))),
                                          Padding(
                                              padding: getPadding(
                                                  left: 24, top: 7, bottom: 6),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text("Rosalia",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterSemiBold32),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 10),
                                                        child: Text("@rose23",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtInterRegular14Gray600))
                                                  ]))
                                        ])))),
                            Padding(
                                padding:
                                    getPadding(left: 24, top: 29, right: 27),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text("Post",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterRegular20Black900),
                                            Padding(
                                                padding: getPadding(top: 10),
                                                child: Text("75",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterSemiBold20DeeppurpleA200))
                                          ]),
                                      Padding(
                                          padding: getPadding(top: 1),
                                          child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text("Following",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterRegular20Black900),
                                                Padding(
                                                    padding: getPadding(top: 9),
                                                    child: Text("3400",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterSemiBold20DeeppurpleA200))
                                              ])),
                                      Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text("Followers",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterRegular20Black900),
                                            Padding(
                                                padding: getPadding(top: 10),
                                                child: Text("6500",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterSemiBold20DeeppurpleA200))
                                          ])
                                    ])),
                            Container(
                                width: double.maxFinite,
                                margin: getMargin(top: 24),
                                padding: getPadding(
                                    left: 40, top: 16, right: 40, bottom: 16),
                                decoration: AppDecoration.fillGray100,
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomImageView(
                                          svgPath: ImageConstant.imgMenu,
                                          height: getSize(40),
                                          width: getSize(40)),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgBookmark,
                                          height: getSize(40),
                                          width: getSize(40)),
                                      CustomImageView(
                                          svgPath: ImageConstant
                                              .imgPlaycircleoutline,
                                          height: getSize(40),
                                          width: getSize(40)),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgMusic,
                                          height: getSize(40),
                                          width: getSize(40))
                                    ])),
                            Padding(
                                padding:
                                    getPadding(left: 16, top: 24, right: 16),
                                child: ListView.separated(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    separatorBuilder: (context, index) {
                                      return SizedBox(
                                          height: getVerticalSize(16));
                                    },
                                    itemCount: 2,
                                    itemBuilder: (context, index) {
                                      return ProfileItemWidget();
                                    }))
                          ])
                    ]))));
  }

  onTapRowellipsefourteen(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.detailedProfileScreen);
  }
}
