import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:int_appone/misc/colors.dart';
import 'package:int_appone/widgets/app_large_text.dart';
import 'package:int_appone/widgets/app_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  var images = {
    "hotel_icon.png": "Hotel",
    "parking_icon.png": "Parking",
    "direction_icon.png": "Directions",
    "transport_icon.png": "Transportation",
  };

  var cards1 = {
    "day1e1_home.jpg": "Day1event1",
    "day1e2_home.jpg": "Day1event2",
    "day1e3_home.jpg": "Day1event3",
    "day1e4_home.jpg": "Day1event4",
    "day1e5_home.jpg": "Day1event5",
    "day1e6_home.jpg": "Day1event6",
  };

  var cards2 = {
    "day2e1_home.jpg": "Day2event1",
    "day2e2_home.jpg": "Day2event2",
    "day2e3_home.jpg": "Day2event3",
    "day2e4_home.jpg": "Day2event4",
    "day2e5_home.jpg": "Day2event5",
    "day2e6_home.jpg": "Day2event6",
    "day2e7_home.jpg": "Day2event7",
    "day2e8_home.jpg": "Day2event8",
    "day2e9_home.jpg": "Day2event9",
  };

  var cards3 = {
    "day3e1_home.jpg": "Day3event1",
    "day3e2_home.jpg": "Day3event2",
    "day3e3_home.jpg": "Day3event3",
    "day3e4_home.jpg": "Day3event4",
    "day3e5_home.jpg": "Day3event5",
    "day3e6_home.jpg": "Day3event6",
    "day3e7_home.jpg": "Day3event6",
    "day3e8_home.jpg": "Day3event6",
  };
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // menu icon is represented here
            Container(
              padding: const EdgeInsets.only(top: 70, left: 20),
              child: Row(
                children: [
                  Icon(
                    Icons.menu,
                    size: 30,
                    color: Colors.black,
                  ),
                  Expanded(
                      child:
                          Container()), //we are increasing the dist. b/w menu icon and small box
                  Container(
                    margin: const EdgeInsets.only(right: 20),
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.withOpacity(0.5),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            // Discover Events Text is labeled here.
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: AppLargeText(text: "Discover Events"),
            ),
            SizedBox(
              height: 20,
            ),

            // Tab Bar of event date list -TABBAR

            Container(
              child: Align(
                alignment: Alignment.centerLeft,
                child: TabBar(
                  labelPadding: const EdgeInsets.only(left: 20, right: 20),
                  controller: _tabController,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  isScrollable: true,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicator:
                      CircleTabIndicator(color: AppColors.redColor, radius: 4),
                  tabs: [
                    Tab(text: "July 1"),
                    Tab(text: "July 2"),
                    Tab(text: "July 3"),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20),
              height: 300,
              width: double.maxFinite,
              child: TabBarView(
                controller: _tabController,
                children: [
                  // this is for the JULY 1st

                  ListView.builder(
                    itemCount:
                        6, //this is the no.of items of the scrolling cards
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: const EdgeInsets.only(right: 15, top: 10),
                        width: 200,
                        height: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage("img/home_page/july1/" +
                                cards1.keys.elementAt(index)),
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  ),

                  // this is for the JULY 2nd

                  ListView.builder(
                    itemCount:
                        9, //this is the no.of items of the scrolling cards
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: const EdgeInsets.only(right: 15, top: 10),
                        width: 200,
                        height: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage("img/home_page/july2/" +
                                cards2.keys.elementAt(index)),
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  ),

                  // This is for the JULY 3rd =========================

                  ListView.builder(
                    itemCount:
                        6, //this is the no.of items of the scrolling cards
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: const EdgeInsets.only(right: 15, top: 10),
                        width: 200,
                        height: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage("img/home_page/july3/" +
                                cards3.keys.elementAt(index)),
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 30,
            ),

            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppLargeText(
                    text: "Explore more",
                    size: 22,
                  ),
                  AppText(
                    text: "See all",
                    color: AppColors.textColor1,
                  )
                ],
              ),
            ),

            SizedBox(
              height: 10,
            ),

            Container(
              height: 120,
              width: double.maxFinite,
              margin: const EdgeInsets.only(left: 20),
              child: ListView.builder(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, index) {
                    return Container(
                      margin: const EdgeInsets.only(right: 30),
                      child: Column(
                        children: [
                          Container(
                            // margin: const EdgeInsets.only(right: 50),
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              image: DecorationImage(
                                  image: AssetImage("img/icons/" +
                                      images.keys.elementAt(index)),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: AppText(
                              text: images.values.elementAt(index),
                              color: AppColors.textColor2,
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),

            // trial==========================================
            // repetetion of the same above icons==============
            SizedBox(
              height: 10,
            ),

            Container(
              height: 120,
              width: double.maxFinite,
              margin: const EdgeInsets.only(left: 20),
              child: ListView.builder(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, index) {
                    return Container(
                      margin: const EdgeInsets.only(right: 30),
                      child: Column(
                        children: [
                          Container(
                            // margin: const EdgeInsets.only(right: 50),
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              image: DecorationImage(
                                  image: AssetImage("img/icons/" +
                                      images.keys.elementAt(index)),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: AppText(
                              text: images.values.elementAt(index),
                              color: AppColors.textColor2,
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),

            // trial==========================================
            // repetetion of the same above icons==============
          ],
        ),
      ),
    );
  }
}

class CircleTabIndicator extends Decoration {
  final Color color;
  double radius;
  CircleTabIndicator({required this.color, required this.radius});
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    // TODO: implement createBoxPainter
    return _CirclePainter(color: color, radius: radius);
  }
}

class _CirclePainter extends BoxPainter {
  final Color color;
  double radius;
  _CirclePainter({required this.color, required this.radius});
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    // TODO: implement paint
    Paint _paint = Paint();
    _paint.color = color;
    _paint.isAntiAlias = true;
    final Offset circleOffset = Offset(
        configuration.size!.width / 2 - radius / 2,
        configuration.size!.height - radius);
    canvas.drawCircle(offset + circleOffset, radius, _paint);
  }
}
