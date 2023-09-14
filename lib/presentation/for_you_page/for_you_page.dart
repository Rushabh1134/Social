import '../for_you_page/widgets/foryou_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:rushabh_s_application1/core/app_export.dart';

// ignore_for_file: must_be_immutable
class ForYouPage extends StatefulWidget {
  @override
  _ForYouPageState createState() => _ForYouPageState();
}

class _ForYouPageState extends State<ForYouPage>
    with AutomaticKeepAliveClientMixin<ForYouPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: getVerticalSize(
                    287,
                  ),
                  child: ListView.separated(
                    padding: getPadding(
                      left: 7,
                      top: 36,
                    ),
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: getVerticalSize(
                          14,
                        ),
                      );
                    },
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return ForyouItemWidget();
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
