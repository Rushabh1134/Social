import 'package:flutter/material.dart';
import 'package:rushabh_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class CommentsItemWidget extends StatelessWidget {
  CommentsItemWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgEllipse2150x501,
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
                  top: 8,
                  bottom: 4,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Rizal Reynaldhi",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterMedium18Gray700,
                    ),
                    Padding(
                      padding: getPadding(
                        top: 2,
                      ),
                      child: Text(
                        "35 minutes ago",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterMedium10Gray50001,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            width: getHorizontalSize(
              382,
            ),
            margin: getMargin(
              top: 23,
            ),
            child: Text(
              "Most people never appreciate what he does but instead they see the point of his fault for their own pleasure. ",
              maxLines: null,
              textAlign: TextAlign.left,
              style: AppStyle.txtInterRegular16Gray700,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 21,
            ),
            child: Text(
              "Reply",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtInterSemiBold16,
            ),
          ),
        ],
      ),
    );
  }
}
