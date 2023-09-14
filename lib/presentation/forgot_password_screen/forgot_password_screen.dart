import 'package:flutter/material.dart';
import 'package:rushabh_s_application1/core/app_export.dart';
import 'package:rushabh_s_application1/widgets/custom_button.dart';
import 'package:rushabh_s_application1/widgets/custom_icon_button.dart';
import 'package:rushabh_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ForgotPasswordScreen extends StatelessWidget {
  TextEditingController emailidController = TextEditingController();

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
                          padding: getPadding(top: 78),
                          child: Text("Forgot Password",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterBold32)),
                      Container(
                          width: getHorizontalSize(352),
                          margin: getMargin(top: 7, right: 29),
                          child: Text(
                              "Please enter your password email address. \nYou will receive a link creative a new password \nvia email.",
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterRegular16)),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: emailidController,
                          hintText: "Email Id",
                          margin: getMargin(top: 55),
                          fontStyle:
                              TextFormFieldFontStyle.InterMedium16WhiteA700,
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.emailAddress),
                      CustomButton(
                          height: getVerticalSize(50),
                          text: "Log In",
                          margin: getMargin(top: 40, bottom: 5),
                          variant: ButtonVariant.FillWhiteA700,
                          shape: ButtonShape.CircleBorder25,
                          padding: ButtonPadding.PaddingAll14,
                          fontStyle:
                              ButtonFontStyle.InterMedium18DeeppurpleA200,
                          onTap: () {
                            onTapLogin(context);
                          })
                    ]))));
  }

  onTapBtnArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.notificationScreen);
  }
}
