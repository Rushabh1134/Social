import '../invite_friends_screen/widgets/invitefriends_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:rushabh_s_application1/core/app_export.dart';
import 'package:rushabh_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:rushabh_s_application1/widgets/app_bar/custom_app_bar.dart';

class InviteFriendsScreen extends StatelessWidget {
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
                    svgPath: ImageConstant.imgClose,
                    margin: getMargin(left: 16, top: 13, bottom: 13),
                    onTap: () {
                      onTapClose(context);
                    }),
                actions: [
                  Padding(
                      padding:
                          getPadding(left: 16, top: 14, right: 16, bottom: 13),
                      child: Text("Next",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterSemiBold18))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, right: 16),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(top: 21),
                          child: Text("Invite Friends",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterBold32DeeppurpleA200)),
                      Padding(
                          padding: getPadding(top: 27),
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
                              itemCount: 9,
                              itemBuilder: (context, index) {
                                return InvitefriendsItemWidget();
                              }))
                    ]))));
  }

  onTapClose(BuildContext context) {
    Navigator.pop(context);
  }
}
