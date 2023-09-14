import 'package:flutter/material.dart';
import 'package:rushabh_s_application1/core/app_export.dart';
import 'package:rushabh_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:rushabh_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:rushabh_s_application1/widgets/custom_button.dart';
import 'package:rushabh_s_application1/widgets/custom_icon_button.dart';
import 'package:rushabh_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class PageViewScreen extends StatelessWidget {
  TextEditingController frameThirtySixController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(50),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleftWhiteA700,
                    margin: getMargin(left: 16, top: 13, bottom: 13),
                    onTap: () {
                      onTapArrowleft(context);
                    }),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgReply,
                      margin: getMargin(left: 16, top: 13, right: 13)),
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgGroup8916,
                      margin: getMargin(left: 24, top: 13, right: 29))
                ]),
            body: Container(
                width: size.width,
                height: size.height,
                decoration: BoxDecoration(
                    color: ColorConstant.whiteA700,
                    gradient: LinearGradient(
                        begin: Alignment(0.5, 0),
                        end: Alignment(0.5, 1.24),
                        colors: [
                          ColorConstant.black9009e,
                          ColorConstant.black9009e
                        ]),
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgPageview),
                        fit: BoxFit.cover)),
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 16, top: 40, right: 16, bottom: 40),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Spacer(),
                          CustomButton(
                              height: getVerticalSize(28),
                              width: getHorizontalSize(71),
                              text: "4 / 6",
                              variant: ButtonVariant.FillDeeppurpleA200,
                              fontStyle:
                                  ButtonFontStyle.InterMedium14WhiteA700),
                          Container(
                              width: getHorizontalSize(300),
                              margin: getMargin(top: 22, right: 82),
                              child: Text("Haliford Luxury\nHotel",
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterBold40)),
                          Container(
                              width: getHorizontalSize(381),
                              margin: getMargin(top: 23),
                              child: Text(
                                  "halford hotel is a luxury hotel that has 5 stars, this hotel is the most comfortable hotel in this area, very complete facilities make the halford hotel famous in the area, affordable prices can make tourists feel happy",
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular12)),
                          Padding(
                              padding: getPadding(top: 98),
                              child: Row(children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgEllipse940x401,
                                    height: getSize(40),
                                    width: getSize(40),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(20))),
                                CustomImageView(
                                    imagePath: ImageConstant.imgEllipse1040x401,
                                    height: getSize(40),
                                    width: getSize(40),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(20)),
                                    margin: getMargin(left: 13)),
                                CustomImageView(
                                    imagePath: ImageConstant.imgEllipse1140x401,
                                    height: getSize(40),
                                    width: getSize(40),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(20)),
                                    margin: getMargin(left: 13)),
                                Spacer(),
                                CustomImageView(
                                    svgPath: ImageConstant.imgLightbulb,
                                    height: getVerticalSize(17),
                                    width: getHorizontalSize(19),
                                    margin: getMargin(top: 12, bottom: 11)),
                                Padding(
                                    padding: getPadding(
                                        left: 8, top: 12, bottom: 12),
                                    child: Text("2200",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterRegular12)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgUser18x19,
                                    height: getVerticalSize(18),
                                    width: getHorizontalSize(19),
                                    margin: getMargin(
                                        left: 29, top: 11, bottom: 11)),
                                Padding(
                                    padding: getPadding(
                                        left: 8, top: 13, bottom: 11),
                                    child: Text("800",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterRegular12))
                              ]))
                        ]))),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 16, right: 16, bottom: 39),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Expanded(
                      child: CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: frameThirtySixController,
                          hintText: "Write a comment",
                          variant: TextFormFieldVariant.FillWhiteA70070,
                          padding: TextFormFieldPadding.PaddingT16_2,
                          textInputAction: TextInputAction.done)),
                  CustomIconButton(
                      height: 50,
                      width: 50,
                      margin: getMargin(left: 16),
                      padding: IconButtonPadding.PaddingAll15,
                      child:
                          CustomImageView(svgPath: ImageConstant.imgSend50x50))
                ]))));
  }

  onTapArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
