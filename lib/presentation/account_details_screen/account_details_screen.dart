import '../account_details_screen/widgets/listeight_item_widget.dart';
import '../account_details_screen/widgets/listellipsefifteen2_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:rushabh_s_application1/core/app_export.dart';
import 'package:rushabh_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:rushabh_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:rushabh_s_application1/widgets/custom_button.dart';
import 'package:rushabh_s_application1/widgets/custom_icon_button.dart';

class AccountDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getVerticalSize(273),
                          width: double.maxFinite,
                          child: Stack(alignment: Alignment.center, children: [
                            CustomImageView(
                                imagePath:
                                    ImageConstant.imgRectangle3809273x4141,
                                height: getVerticalSize(273),
                                width: getHorizontalSize(414),
                                alignment: Alignment.center),
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    padding: getPadding(top: 13, bottom: 13),
                                    decoration: AppDecoration
                                        .gradientWhiteA70000Black900ad,
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomAppBar(
                                              height: getVerticalSize(24),
                                              leadingWidth: 40,
                                              leading: AppbarImage(
                                                  height: getSize(24),
                                                  width: getSize(24),
                                                  svgPath: ImageConstant
                                                      .imgArrowleftDeepPurpleA200,
                                                  margin: getMargin(left: 16),
                                                  onTap: () {
                                                    onTapArrowleft2(context);
                                                  }),
                                              actions: [
                                                AppbarImage(
                                                    height: getSize(24),
                                                    width: getSize(24),
                                                    svgPath: ImageConstant
                                                        .imgGroup9164,
                                                    margin: getMargin(
                                                        left: 16, right: 16))
                                              ]),
                                          Padding(
                                              padding: getPadding(
                                                  left: 16,
                                                  top: 150,
                                                  right: 16,
                                                  bottom: 12),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgEllipse1150x50,
                                                        height: getSize(50),
                                                        width: getSize(50),
                                                        radius: BorderRadius
                                                            .circular(
                                                                getHorizontalSize(
                                                                    25))),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 24, top: 1),
                                                        child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text("Rosalia",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtInterSemiBold20WhiteA700),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              5),
                                                                  child: Text(
                                                                      "@rose23",
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtInterRegular14))
                                                            ])),
                                                    Spacer(),
                                                    CustomIconButton(
                                                        height: 33,
                                                        width: 33,
                                                        margin: getMargin(
                                                            top: 9, bottom: 8),
                                                        variant: IconButtonVariant
                                                            .OutlineWhiteA700,
                                                        shape: IconButtonShape
                                                            .RoundedBorder15,
                                                        padding:
                                                            IconButtonPadding
                                                                .PaddingAll8,
                                                        child: CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgUser24x24)),
                                                    CustomButton(
                                                        height:
                                                            getVerticalSize(33),
                                                        width:
                                                            getHorizontalSize(
                                                                76),
                                                        text: "Follow",
                                                        margin: getMargin(
                                                            left: 24,
                                                            top: 9,
                                                            bottom: 8),
                                                        variant: ButtonVariant
                                                            .OutlineWhiteA700,
                                                        fontStyle: ButtonFontStyle
                                                            .InterSemiBold14WhiteA700_1)
                                                  ]))
                                        ])))
                          ])),
                      Padding(
                          padding: getPadding(left: 24, top: 20, right: 26),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("Post",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtInterRegular20Gray50003),
                                      Padding(
                                          padding: getPadding(top: 10),
                                          child: Text("75",
                                              overflow: TextOverflow.ellipsis,
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
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtInterRegular20Gray50003),
                                          Padding(
                                              padding: getPadding(top: 9),
                                              child: Text("3400",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterSemiBold20DeeppurpleA200))
                                        ])),
                                Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("Followers",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtInterRegular20Gray50003),
                                      Padding(
                                          padding: getPadding(top: 10),
                                          child: Text("6500",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtInterSemiBold20DeeppurpleA200))
                                    ])
                              ])),
                      Padding(
                          padding: getPadding(top: 23),
                          child: Divider(
                              height: getVerticalSize(2),
                              thickness: getVerticalSize(2),
                              color: ColorConstant.deepPurple50)),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 16, top: 20),
                              child: Text("About me",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterBold20Gray900))),
                      Container(
                          width: getHorizontalSize(380),
                          margin: getMargin(left: 16, top: 10, right: 17),
                          child: Text(
                              "Introduce my name is lewandhosky i am a bodybuilder i have been for 10 years i am a trainer and also the owner of the gym in my place i have more than 50 students and from one of them have won the national championship of bodybuilder.",
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterRegular16Gray700)),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 16, top: 10),
                              child: Text("Photos",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterBold20Gray900))),
                      Container(
                          height: getVerticalSize(176),
                          child: ListView.separated(
                              padding: getPadding(left: 16, top: 15, right: 16),
                              scrollDirection: Axis.horizontal,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(16));
                              },
                              itemCount: 3,
                              itemBuilder: (context, index) {
                                return ListeightItemWidget();
                              })),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 16, top: 22),
                              child: Text("Friends",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterBold20Gray900))),
                      Container(
                          height: getVerticalSize(80),
                          child: ListView.separated(
                              padding: getPadding(left: 16, top: 16, right: 14),
                              scrollDirection: Axis.horizontal,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(16));
                              },
                              itemCount: 5,
                              itemBuilder: (context, index) {
                                return Listellipsefifteen2ItemWidget();
                              }))
                    ]))));
  }

  onTapArrowleft2(BuildContext context) {
    Navigator.pop(context);
  }
}
