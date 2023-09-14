import 'package:flutter/material.dart';
import 'package:rushabh_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class ListsenderItemWidget extends StatelessWidget {
  ListsenderItemWidget();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: getVerticalSize(
              54,
            ),
            width: getHorizontalSize(
              52,
            ),
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse2254x521,
                  height: getVerticalSize(
                    54,
                  ),
                  width: getHorizontalSize(
                    52,
                  ),
                  radius: BorderRadius.circular(
                    getHorizontalSize(
                      27,
                    ),
                  ),
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    height: getSize(
                      13,
                    ),
                    width: getSize(
                      13,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.greenA700,
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          6,
                        ),
                      ),
                      border: Border.all(
                        color: ColorConstant.whiteA700,
                        width: getHorizontalSize(
                          2,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              left: 20,
              top: 2,
              bottom: 2,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Richard Alves",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterBold16,
                ),
                Padding(
                  padding: getPadding(
                    top: 8,
                  ),
                  child: Text(
                    "Hey bro, where are you?",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterRegular16Gray600,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: getPadding(
              top: 3,
              bottom: 30,
            ),
            child: Text(
              "10:00 AM",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtInterRegular16Gray600,
            ),
          ),
        ],
      ),
    );
  }
}
