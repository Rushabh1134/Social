import 'package:flutter/material.dart';
import 'package:rushabh_s_application1/core/app_export.dart';
import 'package:rushabh_s_application1/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class InvitefriendsItemWidget extends StatelessWidget {
  InvitefriendsItemWidget();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgEllipse550x50,
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
            left: 24,
            top: 1,
            bottom: 1,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtInterSemiBold20,
              ),
              Padding(
                padding: getPadding(
                  top: 4,
                ),
                child: Text(
                  "Your’e friends on twitter",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterRegular14Gray600,
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        CustomIconButton(
          height: 24,
          width: 24,
          margin: getMargin(
            top: 13,
            bottom: 13,
          ),
          shape: IconButtonShape.RoundedBorder7,
          padding: IconButtonPadding.PaddingAll8,
          child: CustomImageView(
            svgPath: ImageConstant.imgCheckmark,
          ),
        ),
      ],
    );
  }
}
