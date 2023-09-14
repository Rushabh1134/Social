import '../comments_screen/widgets/comments_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:rushabh_s_application1/core/app_export.dart';
import 'package:rushabh_s_application1/widgets/custom_icon_button.dart';
import 'package:rushabh_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class CommentsScreen extends StatelessWidget {
  TextEditingController frameThirtySixController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 13, bottom: 13),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgClose,
                          height: getSize(24),
                          width: getSize(24),
                          margin: getMargin(left: 16),
                          onTap: () {
                            onTapImgClose(context);
                          }),
                      Padding(
                          padding: getPadding(left: 16, top: 34),
                          child: Text("Comments",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterBold32DeeppurpleA200)),
                      Padding(
                          padding: getPadding(top: 21),
                          child: ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return Padding(
                                    padding: getPadding(top: 7.0, bottom: 7.0),
                                    child: SizedBox(
                                        width: double.maxFinite,
                                        child: Divider(
                                            height: getVerticalSize(2),
                                            thickness: getVerticalSize(2),
                                            color:
                                                ColorConstant.deepPurple50)));
                              },
                              itemCount: 3,
                              itemBuilder: (context, index) {
                                return CommentsItemWidget();
                              }))
                    ])),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 16, right: 16, bottom: 39),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Expanded(
                      child: CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: frameThirtySixController,
                          hintText: "Write a comment",
                          variant: TextFormFieldVariant.FillGray10001,
                          padding: TextFormFieldPadding.PaddingT16_2,
                          fontStyle:
                              TextFormFieldFontStyle.InterMedium14Gray50002_1,
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

  onTapImgClose(BuildContext context) {
    Navigator.pop(context);
  }
}
