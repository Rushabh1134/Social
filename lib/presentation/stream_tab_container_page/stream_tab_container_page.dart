import 'package:flutter/material.dart';
import 'package:rushabh_s_application1/core/app_export.dart';
import 'package:rushabh_s_application1/presentation/stream_page/stream_page.dart';
import 'package:rushabh_s_application1/widgets/app_bar/appbar_iconbutton.dart';
import 'package:rushabh_s_application1/widgets/app_bar/appbar_searchview.dart';
import 'package:rushabh_s_application1/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class StreamTabContainerPage extends StatefulWidget {
  @override
  _StreamTabContainerPageState createState() => _StreamTabContainerPageState();
}

class _StreamTabContainerPageState extends State<StreamTabContainerPage>
    with TickerProviderStateMixin {
  late TabController frame9031Controller;

  TextEditingController group9020Controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    frame9031Controller = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            50,
          ),
          title: AppbarSearchview(
            margin: getMargin(
              left: 16,
            ),
            hintText: "Search",
            controller: group9020Controller,
          ),
          actions: [
            AppbarIconbutton(
              svgPath: ImageConstant.imgCamera,
              margin: getMargin(
                left: 16,
                top: 5,
                right: 16,
                bottom: 5,
              ),
            ),
          ],
        ),
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: getVerticalSize(
                  30,
                ),
                width: getHorizontalSize(
                  398,
                ),
                margin: getMargin(
                  top: 25,
                ),
                child: TabBar(
                  controller: frame9031Controller,
                  labelColor: ColorConstant.deepPurpleA200,
                  unselectedLabelColor: ColorConstant.deepPurple200,
                  tabs: [
                    Tab(
                      child: Text(
                        "Trending",
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Latest",
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Discover",
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Daily New",
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: getVerticalSize(
                  666,
                ),
                child: TabBarView(
                  controller: frame9031Controller,
                  children: [
                    StreamPage(),
                    StreamPage(),
                    StreamPage(),
                    StreamPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
