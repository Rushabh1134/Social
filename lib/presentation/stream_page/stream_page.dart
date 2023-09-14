import '../stream_page/widgets/stream_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:rushabh_s_application1/core/app_export.dart';

// ignore_for_file: must_be_immutable
class StreamPage extends StatefulWidget {
  @override
  _StreamPageState createState() => _StreamPageState();
}

class _StreamPageState extends State<StreamPage>
    with AutomaticKeepAliveClientMixin<StreamPage> {
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
              Container(
                height: getVerticalSize(
                  623,
                ),
                child: ListView.separated(
                  padding: getPadding(
                    left: 16,
                    top: 21,
                  ),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: getVerticalSize(
                        21,
                      ),
                    );
                  },
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return StreamItemWidget();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
