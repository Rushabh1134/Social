import '../stories_and_tweets_screen/widgets/listellipsetwelve_item_widget.dart';
import '../stories_and_tweets_screen/widgets/listsend_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:rushabh_s_application1/core/app_export.dart';
import 'package:rushabh_s_application1/widgets/app_bar/appbar_iconbutton.dart';
import 'package:rushabh_s_application1/widgets/app_bar/appbar_searchview.dart';
import 'package:rushabh_s_application1/widgets/app_bar/custom_app_bar.dart';

class StoriesAndTweetsScreen extends StatelessWidget {
  TextEditingController group9088Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            50,
          ),
          title: AppbarSearchview(
            margin: getMargin(
              left: 16,
            ),
            hintText: "Search",
            controller: group9088Controller,
          ),
          actions: [
            AppbarIconbutton(
              svgPath: ImageConstant.imgCamera,
              margin: getMargin(
                left: 16,
                top: 5,
                right: 16,
                bottom: 5,
              ),
            ),
          ],
        ),
        body: Container(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  left: 16,
                  top: 28,
                ),
                child: Text(
                  "Stories",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterBold24,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: getVerticalSize(
                    112,
                  ),
                  child: ListView.separated(
                    padding: getPadding(
                      left: 16,
                      top: 24,
                      right: 14,
                    ),
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: getVerticalSize(
                          16,
                        ),
                      );
                    },
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return ListsendItemWidget();
                    },
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 22,
                ),
                child: ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return Padding(
                      padding: getPadding(
                        top: 12.0,
                        bottom: 12.0,
                      ),
                      child: SizedBox(
                        width: double.maxFinite,
                        child: Divider(
                          height: getVerticalSize(
                            2,
                          ),
                          thickness: getVerticalSize(
                            2,
                          ),
                          color: ColorConstant.deepPurple50,
                        ),
                      ),
                    );
                  },
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return ListellipsetwelveItemWidget();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
