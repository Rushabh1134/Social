import 'package:flutter/material.dart';
import 'package:rushabh_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class NotificationsItemWidget extends StatelessWidget {
  NotificationsItemWidget();

  @override
  Widget build(BuildContext context) {
    return Row(
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
        ),
        Expanded(
          child: Padding(
            padding: getPadding(
              left: 20,
              top: 4,
              bottom: 2,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterBold16,
                ),
                Padding(
                  padding: getPadding(
                    top: 7,
                  ),
                  child: Text(
                    "",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterRegular16Gray600,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
