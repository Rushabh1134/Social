import 'package:flutter/material.dart';
import 'package:rushabh_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class ListeightItemWidget extends StatelessWidget {
  ListeightItemWidget();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: CustomImageView(
        imagePath: ImageConstant.img46161x117,
        height: getVerticalSize(
          161,
        ),
        width: getHorizontalSize(
          117,
        ),
        radius: BorderRadius.circular(
          getHorizontalSize(
            10,
          ),
        ),
        margin: getMargin(
          right: 16,
        ),
      ),
    );
  }
}
