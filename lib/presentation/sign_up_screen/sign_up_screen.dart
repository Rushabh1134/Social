import 'package:flutter/material.dart';
import 'package:rushabh_s_application1/core/app_export.dart';
import 'package:rushabh_s_application1/widgets/custom_button.dart';
import 'package:rushabh_s_application1/widgets/custom_icon_button.dart';
import 'package:rushabh_s_application1/widgets/custom_radio_button.dart';
import 'package:rushabh_s_application1/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class SignUpScreen extends StatelessWidget {
  TextEditingController frameThirtyController = TextEditingController();

  TextEditingController frameThirtyFourController = TextEditingController();

  TextEditingController frameThirtyFiveController = TextEditingController();

  TextEditingController frameThirtySixController = TextEditingController();

  TextEditingController frameThirtySevenController = TextEditingController();

  String radioGroup = "";

  List<String> radioList = ["lbl_female", "lbl_male"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.deepPurpleA200,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 3, right: 16, bottom: 3),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomIconButton(
                          height: 44,
                          width: 44,
                          shape: IconButtonShape.RoundedBorder15,
                          onTap: () {
                            onTapBtnArrowleft(context);
                          },
                          child: CustomImageView(
                              svgPath: ImageConstant.imgArrowleftWhiteA7001)),
                      Padding(
                          padding: getPadding(top: 32),
                          child: Text("Create a New Account",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterBold32)),
                      Padding(
                          padding: getPadding(top: 12),
                          child: Text("It’s fast and easy",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterRegular16)),
                      Padding(
                          padding: getPadding(top: 24),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                    child: CustomTextFormField(
                                        focusNode: FocusNode(),
                                        controller: frameThirtyController,
                                        hintText: "First Name",
                                        margin: getMargin(right: 8))),
                                Expanded(
                                    child: CustomTextFormField(
                                        focusNode: FocusNode(),
                                        controller: frameThirtyFourController,
                                        hintText: "Last Name",
                                        margin: getMargin(left: 8)))
                              ])),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: frameThirtyFiveController,
                          hintText: "Email Id",
                          margin: getMargin(top: 16),
                          textInputType: TextInputType.emailAddress),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: frameThirtySixController,
                          hintText: "Phone No.",
                          margin: getMargin(top: 16),
                          textInputType: TextInputType.phone),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: frameThirtySevenController,
                          hintText: "Date of Birth",
                          margin: getMargin(top: 16),
                          padding: TextFormFieldPadding.PaddingT16,
                          textInputAction: TextInputAction.done,
                          suffix: Container(
                              margin: getMargin(
                                  left: 30, top: 13, right: 16, bottom: 13),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgCalendar)),
                          suffixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(50))),
                      Padding(
                          padding: getPadding(top: 23),
                          child: Text("Gender",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterMedium16)),
                      Padding(
                          padding: getPadding(top: 11),
                          child: Row(children: [
                            CustomRadioButton(
                                width: getHorizontalSize(183),
                                text: "Female",
                                value: radioList[0],
                                groupValue: radioGroup,
                                variant: RadioVariant.FillDeeppurpleA100cc,
                                shape: RadioShape.CircleBorder25,
                                padding: RadioPadding.PaddingT16,
                                fontStyle:
                                    RadioFontStyle.InterMedium14WhiteA700,
                                onChange: (value) {
                                  radioGroup = value;
                                }),
                            CustomRadioButton(
                                width: getHorizontalSize(183),
                                text: "Male",
                                value: radioList[1],
                                groupValue: radioGroup,
                                margin: getMargin(left: 16),
                                variant: RadioVariant.FillDeeppurpleA100cc,
                                shape: RadioShape.CircleBorder25,
                                padding: RadioPadding.PaddingT16,
                                fontStyle:
                                    RadioFontStyle.InterMedium14WhiteA700,
                                onChange: (value) {
                                  radioGroup = value;
                                })
                          ])),
                      Container(
                          width: getHorizontalSize(367),
                          margin: getMargin(left: 8, top: 40, right: 5),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text:
                                        "By clicking Register, you agree to our ",
                                    style: TextStyle(
                                        color: ColorConstant.whiteA700,
                                        fontSize: getFontSize(14),
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400)),
                                TextSpan(
                                    text: "Data Policy",
                                    style: TextStyle(
                                        color: ColorConstant.whiteA700,
                                        fontSize: getFontSize(14),
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400)),
                                TextSpan(
                                    text: " and ",
                                    style: TextStyle(
                                        color: ColorConstant.whiteA700,
                                        fontSize: getFontSize(14),
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400)),
                                TextSpan(
                                    text: "Cookie Polic",
                                    style: TextStyle(
                                        color: ColorConstant.whiteA700,
                                        fontSize: getFontSize(14),
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400)),
                                TextSpan(
                                    text:
                                        "y. You will receive an SMS Notification from Facebook and can decline it at any time.",
                                    style: TextStyle(
                                        color: ColorConstant.whiteA700,
                                        fontSize: getFontSize(14),
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400))
                              ]),
                              textAlign: TextAlign.center)),
                      CustomButton(
                          height: getVerticalSize(50),
                          text: "Sign Up",
                          margin: getMargin(top: 36, bottom: 5),
                          variant: ButtonVariant.FillWhiteA700,
                          shape: ButtonShape.CircleBorder25,
                          padding: ButtonPadding.PaddingAll14,
                          fontStyle:
                              ButtonFontStyle.InterMedium18DeeppurpleA200)
                    ]))));
  }

  onTapBtnArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
