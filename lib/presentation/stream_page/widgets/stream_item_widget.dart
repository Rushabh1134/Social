import 'package:flutter/material.dart';
import 'package:rushabh_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class StreamItemWidget extends StatelessWidget {
  StreamItemWidget();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Padding(
        padding: getPadding(
          right: 21,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.img27540x356,
              height: getVerticalSize(
                540,
              ),
              width: getHorizontalSize(
                356,
              ),
              radius: BorderRadius.circular(
                getHorizontalSize(
                  15,
                ),
              ),
              alignment: Alignment.center,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: getPadding(
                  top: 12,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgEllipse1150x50,
                      height: getSize(
                        50,
                      ),
                      width: getSize(
                        50,
                      ),
                      radius: BorderRadius.circular(
                        getHorizontalSize(
                          25,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 18,
                        top: 1,
                        bottom: 1,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Rosalia",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterSemiBold20,
                          ),
                          Padding(
                            padding: getPadding(
                              top: 5,
                            ),
                            child: Text(
                              "45 minutes ago",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterRegular14Gray600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    CustomImageView(
                      imagePath: ImageConstant.imgEllipse1150x50,
                      height: getSize(
                        50,
                      ),
                      width: getSize(
                        50,
                      ),
                      radius: BorderRadius.circular(
                        getHorizontalSize(
                          25,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 16,
                        top: 3,
                        bottom: 2,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Rosalia",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterSemiBold20,
                          ),
                          Padding(
                            padding: getPadding(
                              top: 4,
                            ),
                            child: Text(
                              "45 minutes ago",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterRegular14Gray600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
