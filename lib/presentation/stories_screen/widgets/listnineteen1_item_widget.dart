import 'package:flutter/material.dart';
import 'package:rushabh_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class Listnineteen1ItemWidget extends StatelessWidget {
  Listnineteen1ItemWidget();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: getPadding(
            right: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: getVerticalSize(
                  144,
                ),
                width: getHorizontalSize(
                  147,
                ),
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.img19144x1471,
                      height: getVerticalSize(
                        144,
                      ),
                      width: getHorizontalSize(
                        147,
                      ),
                      radius: BorderRadius.circular(
                        getHorizontalSize(
                          10,
                        ),
                      ),
                      alignment: Alignment.center,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        margin: getMargin(
                          left: 12,
                          top: 12,
                          right: 81,
                          bottom: 112,
                        ),
                        padding: getPadding(
                          left: 8,
                          top: 3,
                          right: 8,
                          bottom: 3,
                        ),
                        decoration: AppDecoration.fillDeeppurpleA200.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder12,
                        ),
                        child: Row(
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgVideocamera,
                              height: getSize(
                                12,
                              ),
                              width: getSize(
                                12,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 4,
                              ),
                              child: Text(
                                "",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterMedium10,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 16,
                ),
                child: Text(
                  "",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterSemiBold14,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 7,
                ),
                child: Text(
                  "",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterRegular12Gray500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
