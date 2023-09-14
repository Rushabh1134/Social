import '../daily_new_page/widgets/listfive_item_widget.dart';
import '../daily_new_page/widgets/listnineteen_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:rushabh_s_application1/core/app_export.dart';

// ignore_for_file: must_be_immutable
class DailyNewPage extends StatefulWidget {
  @override
  _DailyNewPageState createState() => _DailyNewPageState();
}

class _DailyNewPageState extends State<DailyNewPage>
    with AutomaticKeepAliveClientMixin<DailyNewPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: getPadding(
                      left: 16,
                      top: 32,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: getVerticalSize(
                            179,
                          ),
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            separatorBuilder: (context, index) {
                              return SizedBox(
                                height: getVerticalSize(
                                  16,
                                ),
                              );
                            },
                            itemCount: 3,
                            itemBuilder: (context, index) {
                              return ListnineteenItemWidget();
                            },
                          ),
                        ),
                        Container(
                          margin: getMargin(
                            top: 30,
                            right: 91,
                          ),
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
                              Padding(
                                padding: getPadding(
                                  left: 8,
                                  right: 8,
                                ),
                                child: Row(
                                  children: [
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant.imgEllipse2150x502,
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Avari Kudhra",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterMedium18,
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              top: 4,
                                            ),
                                            child: Text(
                                              "1 hour ago",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtInterMedium10Bluegray100,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    CustomImageView(
                                      svgPath: ImageConstant.imgGroup8916,
                                      height: getVerticalSize(
                                        6,
                                      ),
                                      width: getHorizontalSize(
                                        30,
                                      ),
                                      margin: getMargin(
                                        left: 80,
                                        top: 22,
                                        bottom: 22,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: getVerticalSize(
                                  200,
                                ),
                                child: ListView.separated(
                                  padding: getPadding(
                                    top: 33,
                                  ),
                                  scrollDirection: Axis.horizontal,
                                  separatorBuilder: (context, index) {
                                    return SizedBox(
                                      height: getVerticalSize(
                                        16,
                                      ),
                                    );
                                  },
                                  itemCount: 2,
                                  itemBuilder: (context, index) {
                                    return ListfiveItemWidget();
                                  },
                                ),
                              ),
                              Container(
                                width: getHorizontalSize(
                                  340,
                                ),
                                margin: getMargin(
                                  top: 14,
                                  right: 10,
                                ),
                                child: Text(
                                  "This is a very rare photo taken of me, namely animals that have their own business.",
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular16,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 15,
                                  right: 14,
                                  bottom: 15,
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      "#animal",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterRegular14,
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 10,
                                      ),
                                      child: Text(
                                        "#forest",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterRegular14,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 30,
                                      ),
                                      child: Text(
                                        "#rabbit",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterRegular14,
                                      ),
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
