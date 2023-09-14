import 'package:flutter/material.dart';
import 'package:rushabh_s_application1/core/app_export.dart';
import 'package:rushabh_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:rushabh_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:rushabh_s_application1/widgets/custom_button.dart';
import 'package:rushabh_s_application1/widgets/custom_floating_button.dart';
import 'package:rushabh_s_application1/widgets/custom_icon_button.dart';

class AccountViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: size.height,
                          width: double.maxFinite,
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                        height: getVerticalSize(645),
                                        width: double.maxFinite,
                                        child: Stack(
                                            alignment: Alignment.topCenter,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgRectangle3809645x414,
                                                  height: getVerticalSize(645),
                                                  width: getHorizontalSize(414),
                                                  alignment: Alignment.center),
                                              CustomAppBar(
                                                  height: getVerticalSize(37),
                                                  leadingWidth: 40,
                                                  leading: AppbarImage(
                                                      height: getSize(24),
                                                      width: getSize(24),
                                                      svgPath: ImageConstant
                                                          .imgArrowleftDeepPurpleA200,
                                                      margin:
                                                          getMargin(left: 16),
                                                      onTap: () {
                                                        onTapArrowleft1(
                                                            context);
                                                      }),
                                                  actions: [
                                                    AppbarImage(
                                                        height: getSize(24),
                                                        width: getSize(24),
                                                        svgPath: ImageConstant
                                                            .imgGroup9164,
                                                        margin: getMargin(
                                                            left: 16,
                                                            right: 16))
                                                  ])
                                            ]))),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                        margin: getMargin(top: 71),
                                        decoration: AppDecoration
                                            .gradientWhiteA70000Black900ad,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgGroup,
                                                  height: getSize(130),
                                                  width: getSize(130),
                                                  margin: getMargin(top: 89)),
                                              Spacer(),
                                              Container(
                                                  width: double.maxFinite,
                                                  child: Container(
                                                      padding: getPadding(
                                                          left: 16,
                                                          top: 33,
                                                          right: 16,
                                                          bottom: 33),
                                                      decoration: AppDecoration
                                                          .fillDeeppurpleA200
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .customBorderTL30),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgEllipse1150x50,
                                                                      height:
                                                                          getSize(
                                                                              50),
                                                                      width:
                                                                          getSize(
                                                                              50),
                                                                      radius: BorderRadius
                                                                          .circular(
                                                                              getHorizontalSize(25))),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          left:
                                                                              24,
                                                                          top:
                                                                              1),
                                                                      child: Column(
                                                                          crossAxisAlignment: CrossAxisAlignment
                                                                              .start,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.start,
                                                                          children: [
                                                                            Text("Rosalia",
                                                                                overflow: TextOverflow.ellipsis,
                                                                                textAlign: TextAlign.left,
                                                                                style: AppStyle.txtInterSemiBold20WhiteA700),
                                                                            Padding(
                                                                                padding: getPadding(top: 5),
                                                                                child: Text("@rose23", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterRegular14))
                                                                          ])),
                                                                  Spacer(),
                                                                  CustomButton(
                                                                      height:
                                                                          getVerticalSize(
                                                                              33),
                                                                      width:
                                                                          getHorizontalSize(
                                                                              98),
                                                                      text:
                                                                          "Follow",
                                                                      margin: getMargin(
                                                                          top:
                                                                              9,
                                                                          bottom:
                                                                              8),
                                                                      variant:
                                                                          ButtonVariant
                                                                              .OutlineWhiteA700,
                                                                      fontStyle:
                                                                          ButtonFontStyle
                                                                              .InterSemiBold16WhiteA700)
                                                                ]),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            10,
                                                                        top: 29,
                                                                        right:
                                                                            8),
                                                                child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      Column(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.start,
                                                                          children: [
                                                                            Text("Post",
                                                                                overflow: TextOverflow.ellipsis,
                                                                                textAlign: TextAlign.left,
                                                                                style: AppStyle.txtInterRegular20),
                                                                            Padding(
                                                                                padding: getPadding(top: 10),
                                                                                child: Text("75", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterSemiBold20WhiteA700))
                                                                          ]),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  1),
                                                                          child: Column(
                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                              children: [
                                                                                Text("Following", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterRegular20),
                                                                                Padding(padding: getPadding(top: 9), child: Text("3400", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterSemiBold20WhiteA700))
                                                                              ])),
                                                                      Column(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.start,
                                                                          children: [
                                                                            Text("Followers",
                                                                                overflow: TextOverflow.ellipsis,
                                                                                textAlign: TextAlign.left,
                                                                                style: AppStyle.txtInterRegular20),
                                                                            Padding(
                                                                                padding: getPadding(top: 10),
                                                                                child: Text("6500", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterSemiBold20WhiteA700))
                                                                          ])
                                                                    ])),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            34,
                                                                        top: 29,
                                                                        right:
                                                                            34,
                                                                        bottom:
                                                                            24),
                                                                child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    children: [
                                                                      CustomIconButton(
                                                                          height:
                                                                              50,
                                                                          width:
                                                                              50,
                                                                          variant: IconButtonVariant
                                                                              .FillWhiteA700,
                                                                          padding: IconButtonPadding
                                                                              .PaddingAll15,
                                                                          onTap:
                                                                              () {
                                                                            onTapBtnGoogle(context);
                                                                          },
                                                                          child:
                                                                              CustomImageView(svgPath: ImageConstant.imgGoogle50x50)),
                                                                      CustomIconButton(
                                                                          height:
                                                                              50,
                                                                          width:
                                                                              50,
                                                                          margin: getMargin(
                                                                              left:
                                                                                  82),
                                                                          variant: IconButtonVariant
                                                                              .FillWhiteA700,
                                                                          padding: IconButtonPadding
                                                                              .PaddingAll15,
                                                                          child:
                                                                              CustomImageView(svgPath: ImageConstant.imgComputer50x50))
                                                                    ]))
                                                          ])))
                                            ])))
                              ]))
                    ])),
            floatingActionButton: CustomFloatingButton(
                height: 50,
                width: 50,
                child: CustomImageView(
                    svgPath: ImageConstant.imgCall,
                    height: getVerticalSize(25.0),
                    width: getHorizontalSize(25.0)))));
  }

  onTapArrowleft1(BuildContext context) {
    Navigator.pop(context);
  }

  onTapBtnGoogle(BuildContext context) async {
    var url = 'https://accounts.google.com/';
    if (!await launch(url)) {
      throw 'Could not launch https://accounts.google.com/';
    }
  }
}
