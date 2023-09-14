import '../trending_tab_container_page/widgets/listellipsefifteen_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:rushabh_s_application1/core/app_export.dart';
import 'package:rushabh_s_application1/presentation/trending_page/trending_page.dart';
import 'package:rushabh_s_application1/widgets/app_bar/appbar_circleimage.dart';
import 'package:rushabh_s_application1/widgets/app_bar/appbar_searchview.dart';
import 'package:rushabh_s_application1/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class TrendingTabContainerPage extends StatefulWidget {
  @override
  _TrendingTabContainerPageState createState() =>
      _TrendingTabContainerPageState();
}

class _TrendingTabContainerPageState extends State<TrendingTabContainerPage>
    with TickerProviderStateMixin {
  late TabController frame9031Controller;

  TextEditingController group9021Controller = TextEditingController();

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
            controller: group9021Controller,
          ),
          actions: [
            AppbarCircleimage(
              imagePath: ImageConstant.imgEllipse1440x40,
              margin: getMargin(
                left: 16,
                top: 5,
                right: 19,
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
                  113,
                ),
                child: ListView.separated(
                  padding: getPadding(
                    left: 16,
                    top: 25,
                    right: 14,
                  ),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: getVerticalSize(
                        16,
                      ),
                    );
                  },
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return ListellipsefifteenItemWidget();
                  },
                ),
              ),
              Container(
                height: getVerticalSize(
                  30,
                ),
                width: getHorizontalSize(
                  398,
                ),
                margin: getMargin(
                  top: 30,
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
                  548,
                ),
                child: TabBarView(
                  controller: frame9031Controller,
                  children: [
                    TrendingPage(),
                    TrendingPage(),
                    TrendingPage(),
                    TrendingPage(),
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
