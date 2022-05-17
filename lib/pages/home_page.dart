import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:int_appone/misc/colors.dart';
import 'package:int_appone/widgets/app_large_text.dart';
import 'package:int_appone/widgets/app_med_text.dart';
import 'package:int_appone/widgets/app_text.dart';

import 'navpages/image_cards/carousel.dart';
import 'navpages/image_cards/carousel_two.dart';
import 'navpages/image_cards/carousel_three.dart';

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

  var items = [
    PlaceInfo('Musical Night', const Color(0xff6DC8F3), const Color(0xff73A1F9),
        'July 1', 'Washington Convention Center', 'By - SS.Thaman'),
    PlaceInfo(
        'Live In Concert',
        const Color(0xffFFB157),
        const Color(0xffFFA057),
        'July 1',
        'Washington Convention Center',
        'By - Ram Miryala'),
    PlaceInfo(
        'Grand Musical Concert',
        const Color(0xffFF5B95),
        const Color(0xffF8556D),
        'July 1',
        'Washington Convention Center',
        'By - Maestro Ilayaraja'),
    PlaceInfo(
        'Keynote Speakers',
        const Color(0xffD76EF5),
        const Color(0xff8F7AFE),
        'July 1',
        'Washington Convention Center',
        'Sadhguru · Kamlesh D Patel'),
    PlaceInfo(
        'Special Guests',
        const Color(0xff42E695),
        const Color(0xff3BB2B8),
        'July 1',
        'Washington Convention Centers',
        'KTR · Y.S.Jagan'),
    PlaceInfo(
        'Special Guests',
        const Color(0xffFFB157),
        const Color(0xffFFA057),
        'July 1',
        'Washington Convention Centers',
        'Rakul Preet Singh · Vijay Devarakonda'),
  ];

  final double _borderRadius = 24.0;
  @override
  // ignore: dead_code
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // menu icon is represented here
            // Container(
            //   padding: const EdgeInsets.only(top: 5, left: 20),
            //   child: Row(
            //     children: [
            //       const Icon(
            //         Icons.menu,
            //         size: 30,
            //         color: Colors.black,
            //       ),
            //       Expanded(
            //           child:
            //               Container()), //we are increasing the dist. b/w menu icon and small box
            //       Container(
            //         margin: const EdgeInsets.only(right: 20),
            //         width: 50,
            //         height: 50,
            //         decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(10),
            //           color: Colors.grey.withOpacity(0.5),
            //         ),
            //       )
            //     ],
            //   ),
            // ),
            const SizedBox(
              height: 10,
            ),
            // Discover Events Text is labeled here.
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: AppLargeText(text: "Discover Events"),
            ),
            const SizedBox(
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
                  tabs: const [
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
                            image: AssetImage(
                              "img/home_page/july1/" +
                                  cards1.keys.elementAt(index),
                            ),
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

            const SizedBox(
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

            const SizedBox(
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
                        const SizedBox(
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
                },
              ),
            ),

            // trial==========================================
            // repetetion of the same above icons==============
            const SizedBox(
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
                        const SizedBox(
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
                },
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppLargeText(
                    text: "Special Events",
                    size: 22,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 40),
                    child: Icon(
                      Icons.edit_calendar_outlined,
                      color: AppColors.textColor1,
                    ),
                  ),
                  AppText(
                    text: "Save the Date",
                    color: AppColors.textColor1,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            Container(
              padding: const EdgeInsets.only(left: 5),
              height: 400,
              width: double.maxFinite,
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        children: <Widget>[
                          Container(
                            height: 150,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(_borderRadius),
                              gradient: LinearGradient(
                                colors: [
                                  items[index].startColor,
                                  items[index].endColor,
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: items[index].endColor,
                                  blurRadius: 12,
                                  offset: const Offset(0, 6),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            right: 0,
                            bottom: 0,
                            top: 0,
                            child: CustomPaint(
                              size: const Size(100, 150),
                              painter: CustomCardShapePainter(
                                  _borderRadius,
                                  items[index].startColor,
                                  items[index].endColor),
                            ),
                          ),
                          Positioned.fill(
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: Image.asset(
                                    "img/home_page/july1/" + // here change images
                                        cards1.keys.elementAt(index),
                                    height: 64,
                                    width: 64,
                                  ),
                                  flex: 2,
                                ),
                                Expanded(
                                  flex: 4,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        items[index].name,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900,
                                          fontSize: 16,
                                        ),
                                      ),
                                      Text(
                                        items[index].category,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 16,
                                      ),
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.location_on,
                                            color: Colors.white,
                                            size: 16,
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Flexible(
                                            child: Text(
                                              items[index].location,
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.calendar_month_outlined,
                                            color: Colors.white,
                                            size: 19,
                                          ),
                                          Text(
                                            items[index].rating.toString(),
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ],
                                      ),

                                      // CardBar(
                                      //   time: items[index].rating,
                                      // ),
                                      // Icon(
                                      //   Icons.star,
                                      //   color: Colors.white,
                                      // ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),

            SizedBox(
              height: 20,
            ),

            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppLargeText(
                    text: "ATA Sponsors",
                    size: 25,
                  ),
                ],
              ),
            ),

            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppText(
                    text: "Diamond Sponsors",
                    size: 22,
                  ),
                  Row(
                    children: [
                      AppText(
                        text: "Swipe",
                        color: AppColors.textColor1,
                      ),
                      Icon(Icons.double_arrow_rounded,
                          color: AppColors.textColor1),
                    ],
                  )
                ],
              ),
            ),

            CarouselOne(),

            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppText(
                    text: "Platinum Sponsors",
                    size: 22,
                  ),
                  Row(
                    children: [
                      AppText(
                        text: "Swipe",
                        color: AppColors.textColor1,
                      ),
                      Icon(Icons.double_arrow_rounded,
                          color: AppColors.textColor1),
                    ],
                  )
                ],
              ),
            ),

            CarouselTwo(),

            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppText(
                    text: "Gold Sponsors",
                    size: 22,
                  ),
                  Row(
                    children: [
                      AppText(
                        text: "Swipe",
                        color: AppColors.textColor1,
                      ),
                      Icon(Icons.double_arrow_rounded,
                          color: AppColors.textColor1),
                    ],
                  )
                ],
              ),
            ),

            CarouselThree(),
          ],
        ),
      ),
    );
  }
}

class PlaceInfo {
  final String name;
  final String category;
  final String location;
  final String rating;
  final Color startColor;
  final Color endColor;

  PlaceInfo(this.name, this.startColor, this.endColor, this.rating,
      this.location, this.category);
}

class CustomCardShapePainter extends CustomPainter {
  final double radius;
  final Color startColor;
  final Color endColor;

  CustomCardShapePainter(this.radius, this.startColor, this.endColor);

  @override
  void paint(Canvas canvas, Size size) {
    var radius = 24.0;

    var paint = Paint();
    paint.shader = ui.Gradient.linear(
        const Offset(0, 0), Offset(size.width, size.height), [
      HSLColor.fromColor(startColor).withLightness(0.8).toColor(),
      endColor
    ]);

    var path = Path()
      ..moveTo(0, size.height)
      ..lineTo(size.width - radius, size.height)
      ..quadraticBezierTo(
          size.width, size.height, size.width, size.height - radius)
      ..lineTo(size.width, radius)
      ..quadraticBezierTo(size.width, 0, size.width - radius, 0)
      ..lineTo(size.width - 1.5 * radius, 0)
      ..quadraticBezierTo(-radius, 2 * radius, 0, size.height)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
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
