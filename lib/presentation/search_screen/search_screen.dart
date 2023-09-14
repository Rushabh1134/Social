import '../search_screen/widgets/search_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:rushabh_s_application1/core/app_export.dart';
import 'package:rushabh_s_application1/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class SearchScreen extends StatelessWidget {
  TextEditingController group9116Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 13, right: 16, bottom: 13),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgClose,
                          height: getSize(24),
                          width: getSize(24),
                          onTap: () {
                            onTapImgClose(context);
                          }),
                      Padding(
                          padding: getPadding(top: 34),
                          child: Text("Search",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterBold32DeeppurpleA200)),
                      CustomSearchView(
                          focusNode: FocusNode(),
                          controller: group9116Controller,
                          hintText: "Search",
                          margin: getMargin(top: 13),
                          suffix: Container(
                              margin: getMargin(
                                  left: 30, top: 11, right: 16, bottom: 11),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgSearchGray400)),
                          suffixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(40))),
                      Padding(
                          padding: getPadding(top: 29),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Recently",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterBold20),
                                Padding(
                                    padding: getPadding(bottom: 5),
                                    child: Text("Clear All",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtInterMedium16DeeppurpleA200))
                              ])),
                      Padding(
                          padding: getPadding(top: 25),
                          child: ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return Padding(
                                    padding:
                                        getPadding(top: 17.0, bottom: 17.0),
                                    child: SizedBox(
                                        width: double.maxFinite,
                                        child: Divider(
                                            height: getVerticalSize(2),
                                            thickness: getVerticalSize(2),
                                            color:
                                                ColorConstant.deepPurple50)));
                              },
                              itemCount: 7,
                              itemBuilder: (context, index) {
                                return SearchItemWidget();
                              }))
                    ]))));
  }

  onTapImgClose(BuildContext context) {
    Navigator.pop(context);
  }
}
