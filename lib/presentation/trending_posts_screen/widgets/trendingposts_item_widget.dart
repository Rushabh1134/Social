import 'package:flutter/material.dart';
import 'package:rushabh_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class TrendingpostsItemWidget extends StatelessWidget {
  TrendingpostsItemWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        all: 16,
      ),
      decoration: AppDecoration.outlineBlack90019.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgEllipse2135x35,
                height: getSize(
                  35,
                ),
                width: getSize(
                  35,
                ),
                radius: BorderRadius.circular(
                  getHorizontalSize(
                    17,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 10,
                  top: 5,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Rizal Reynaldhi",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterMedium12WhiteA700,
                    ),
                    Padding(
                      padding: getPadding(
                        top: 2,
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
            ],
          ),
          Container(
            width: getHorizontalSize(
              137,
            ),
            margin: getMargin(
              top: 8,
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text:
                        "Vacation to Bali is my biggest dream because I want to enjoy the beauty of the beach called Kute, hopefully my dream will come tru",
                    style: TextStyle(
                      color: ColorConstant.whiteA700,
                      fontSize: getFontSize(
                        12,
                      ),
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextSpan(
                    text: "e",
                    style: TextStyle(
                      color: ColorConstant.whiteA700,
                      fontSize: getFontSize(
                        12,
                      ),
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 14,
            ),
            child: Row(
              children: [
                Text(
                  "#Bali",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterRegular14,
                ),
                Padding(
                  padding: getPadding(
                    left: 24,
                  ),
                  child: Text(
                    "#dreams",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterRegular14,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              left: 1,
              top: 18,
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
                    top: 1,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 8,
                    top: 1,
                    bottom: 1,
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
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 8,
                    top: 2,
                  ),
                  child: Text(
                    "800",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterRegular12,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
