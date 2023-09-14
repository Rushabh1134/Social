import 'package:flutter/material.dart';
import 'package:rushabh_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class ProfileItemWidget extends StatelessWidget {
  ProfileItemWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: Container(
        padding: getPadding(
          left: 16,
          top: 21,
          right: 16,
          bottom: 21,
        ),
        decoration: AppDecoration.outlineBlack90019.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder15,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: getPadding(
                top: 3,
              ),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse2150x503,
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
                      top: 6,
                      bottom: 4,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Rosalia",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterMedium18,
                        ),
                        Padding(
                          padding: getPadding(
                            top: 4,
                          ),
                          child: Text(
                            "35 minutes ago",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtInterMedium10Bluegray100,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  CustomImageView(
                    svgPath: ImageConstant.imgGroup8916,
                    height: getVerticalSize(
                      6,
                    ),
                    width: getHorizontalSize(
                      30,
                    ),
                    margin: getMargin(
                      top: 22,
                      bottom: 22,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: getHorizontalSize(
                332,
              ),
              margin: getMargin(
                top: 23,
                right: 17,
              ),
              child: Text(
                "Most people never appreciate what he does but instead they see the point of his fault for their own pleasure. ",
                maxLines: null,
                textAlign: TextAlign.left,
                style: AppStyle.txtInterRegular16,
              ),
            ),
            Padding(
              padding: getPadding(
                top: 20,
                right: 5,
              ),
              child: Row(
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgLightbulb,
                    height: getVerticalSize(
                      17,
                    ),
                    width: getHorizontalSize(
                      19,
                    ),
                    margin: getMargin(
                      top: 5,
                      bottom: 3,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 8,
                      top: 5,
                      bottom: 4,
                    ),
                    child: Text(
                      "2200",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterRegular12,
                    ),
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgUser18x19,
                    height: getVerticalSize(
                      18,
                    ),
                    width: getHorizontalSize(
                      19,
                    ),
                    margin: getMargin(
                      left: 29,
                      top: 4,
                      bottom: 3,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 8,
                      top: 6,
                      bottom: 3,
                    ),
                    child: Text(
                      "800",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterRegular12,
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: getVerticalSize(
                      25,
                    ),
                    width: getHorizontalSize(
                      54,
                    ),
                    child: Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgEllipse3025x25,
                          height: getSize(
                            25,
                          ),
                          width: getSize(
                            25,
                          ),
                          radius: BorderRadius.circular(
                            getHorizontalSize(
                              12,
                            ),
                          ),
                          alignment: Alignment.centerLeft,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgEllipse3125x25,
                          height: getSize(
                            25,
                          ),
                          width: getSize(
                            25,
                          ),
                          radius: BorderRadius.circular(
                            getHorizontalSize(
                              12,
                            ),
                          ),
                          alignment: Alignment.centerRight,
                          margin: getMargin(
                            right: 13,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgEllipse3225x25,
                          height: getSize(
                            25,
                          ),
                          width: getSize(
                            25,
                          ),
                          radius: BorderRadius.circular(
                            getHorizontalSize(
                              12,
                            ),
                          ),
                          alignment: Alignment.centerRight,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
