import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:int_appone/cubit/app_cubit_states.dart';
import 'package:int_appone/cubit/app_cubits.dart';
import 'dart:ui' as ui;
import 'package:int_appone/misc/colors.dart';
import 'package:int_appone/pages/detail_page.dart';
import 'package:int_appone/pages/detail_page/about.dart';
import 'package:int_appone/pages/detail_page/hotel.dart';
import 'package:int_appone/pages/navpages/detail_page_two.dart';
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
    "hotel_icon.jpg": "Hotel",
    "parking_icon.jpg": "Parking",
    "direction_icon.jpg": "Directions",
    "transport_icon.jpg": "Transit",
  };

  var icons = [
    {
      "id": "1",
      "icon_name": "Hotel",
      "icon_image": "img/hotel.jpg",
      "icon_description":
          "The cornerstone of downtown DC’s renaissance, the Walter E. Washington Convention Center is as functional as it is artistically impressive. The 2.3-million-square-foot space hosts meetings, conventions, and events of every kind, from medical industry annual meetings to comic book-inspired expos and board retreats and are equipped to handle events of all sizes, from small groups and break-out meetings to events for 500 to 42,000 attendees. One of the most energy-efficient.",
      "icon_location": "Washington DC",
      "icon_text": "Hotel",
      "icon_url": "https://www.ataconference.org/venue",
    },
    {
      "id": "2",
      "icon_name": "Parking",
      "icon_image": "img/hotel.jpg",
      "icon_description":
          "Public Parking Garages and Lots Near the Washington Convention Center. Center City Parking - 9th Street between New York Ave. and H Street NW Washington, D.C. (202) 265-0010.Valet Parking Near DC Convention Follow this Link https://www.parkingpanda.com/washington-dc-convention-center-parkingInterarm - Renaissance Hotel, 999 Ninth Street NW Washington, D.C. (202) 898-9000.PMI Parking - 915 Massachusetts Ave. NWublic Parking Garages and Lots Near the Washington Convention Center. Center City Parking - 9th Street between New York Ave. and H Street NW Washington, D.C. (202) 265-0010.Valet Parking Near DC Convention Follow this Link https://www.parkingpanda.com/washington-dc-convention-center-parkingInterarm - Renaissance Hotel, 999 Ninth Street NW Washington, D.C. (202) 898-9000.PMI Parking - 915 Massachusetts Ave. NW Washington, D.C. (202) 785 Washington, D.C. (202) 785-9191.",
      "icon_location": "Washington DC",
      "icon_text": "Parking",
      "icon_url": "https://www.ataconference.org/venue",
    },
    {
      "id": "3",
      "icon_name": "Directions",
      "icon_image": "img/hotel.jpg",
      "icon_description":
          "The cornerstone of downtown DC’s renaissance, the Walter E. Washington Convention Center is as functional as it is artistically impressive. The 2.3-million-square-foot space hosts meetings, conventions, and events of every kind, from medical industry annual meetings to comic book-inspired expos and board retreats and are equipped to handle events of all sizes, from small groups and break-out meetings to events for 500 to 42,000 attendees. One of the most energy-efficient.",
      "icon_location": "Washington DC",
      "icon_text": "Directions",
      "icon_url":
          "https://www.google.com/maps/dir/?api=1&destination=801%20Mt%20Vernon%20Pl%20NW,%20Washington,%20DC%2020001,%20USA",
    },
    {
      "id": "4",
      "icon_name": "Transit",
      "icon_image": "img/hotel.jpg",
      "icon_description":
          "Ronald Reagan Washington National Airport (DCA), ATA Provides Shuttle Service for Every 1 HR on July 1st, 2022 from 9:00 am to 7:00 pm, Please look for ATA Transport desk in Lower-Level Baggage claim area in all terminals Return transportation will be provided from hotel to Airport on July 4th, 2022, from 8:00 am to 2:00 pm Washington Dulles International Airport (IAD) ATA Provides Shuttle Service for Every 1HR on July 1st, 2022 from 9:00 am to 7:00 pm, Please look for ATA Transport desk near Baggage claim area. Return transportation will be provided from hotel to Airport on July 4th, 2022 from 8:00 am to 2:00 pm Ashburn/Herndon Shuttle Service to Convention Center. ATA Provides Shuttle Services on 2nd July & 3rd July from 8AM - 4 PM. Ashburn Pick up and Drop off location ,Loudoun Station, 43751 Central Station Dr, VA 20147,Herndon Pickup and Drop off location. Herndon-Monroe Park and Ride 12530 Sunrise Valley Dr, Herndon VA 20221",
      "icon_location": "Washington DC",
      "icon_text": "Transit",
      "icon_url": "https://www.ataconference.org/venue",
    }
  ];

  var cards1 = [
    // this is for the july 1st event
    {
      "id": "1",
      "image": "day1e1_home.jpg",
      "detImage": 'day1e1_detail.jpg',
      "name": "Registrations",
      "time": "9:00 a.m - 6:00 p.m",
      "description": "Dear Guests, Welcome to ATA Conference.",
      "location": "Washington DC"
    },
    {
      "id": "2",
      "image": "day1e2_home.jpg",
      "detImage": "day1e2_detail.jpg",
      "name": "Networking",
      "time": "5:00 - 7:00 p.m",
      "description": "Level 3 Ballroom (Hall A,B,C)",
      "location": "Washington DC"
    },
    {
      "id": "3",
      "image": "day1e3_home.jpg",
      "detImage": "day1e3_detail.jpg",
      "name": "Banquet",
      "time": "6:30 - 7:30 p.m",
      "description": "Level 3 Ballroom (Hall A,B,C)",
      "location": "Washington DC"
    },
    {
      "id": "4",
      "image": "day1e4_home.jpg",
      "detImage": "day1e4_detail.jpg",
      "name": "Boat Cruise",
      "time": "7:30 - 10:00 p.m",
      "description": "(AGE - 21+) - Youth Forum - Potomac River",
      "location": "Potomac River"
    },
    {
      "id": "5",
      "image": "day1e5_home.jpg",
      "detImage": "day1e5_detail.jpg",
      "name": "Celebrations",
      "time": "7:30 - 11:30 p.m",
      "description":
          "ATA Awards, Cultural Programs, Guest Performances, Musical Night at Level 3 Ballroom (Hall A,B,C)",
      "location": "Washington DC"
    },
    {
      "id": "6",
      "image": "day1e6_home.jpg",
      "detImage": "day1e6_detail.jpg",
      "name": "Dinner Buffet",
      "time": "6:00 - 7:00",
      "description": "Level 3 Ballroom (Hall A,B,C)",
      "location": "Level-3 Ballroom (Hall A,B,C)"
    },
  ];

  var cards2 = [
    // this is for the july 2st event
    {
      "id": "1",
      "image": "day2e1_home.jpg",
      "detImage": 'day2e1_detail.jpg',
      "name": "Registrations",
      "time": "9:00 a.m - 6:00 p.m",
      "description": "Dear Guests, Welcome to ATA Conference.",
      "location": "Washington DC"
    },
    {
      "id": "2",
      "image": "day2e2_home.jpg",
      "detImage": "day2e2_detail.jpg",
      "name": "ATA Parade",
      "time": "9:00 - 10:00 a.m",
      "description": "Level 3 Ballroom (Hall A,B,C)",
      "location": "Washington DC"
    },
    {
      "id": "3",
      "image": "day2e3_home.jpg",
      "detImage": "day2e3_detail.jpg",
      "name": "Inaugural",
      "time": "10:00 a.m - 12:00 p.m",
      "description": "Level 3 Ballroom (Hall A,B,C)",
      "location": "Washington DC"
    },
    {
      "id": "4",
      "image": "day2e4_home.jpg",
      "detImage": "day2e4_detail.jpg",
      "name": "Exhibits",
      "time": "10:00 a.m - 9:00 p.m",
      "description": "(AGE - 21+) - Youth Forum - Potomac River",
      "location": "Potomac River"
    },
    {
      "id": "5",
      "image": "day2e5_home.jpg",
      "detImage": "day2e5_detail.jpg",
      "name": "Lunch",
      "time": "Starts 12:00 p.m",
      "description":
          "ATA Awards, Cultural Programs, Guest Performances, Musical Night at Level 3 Ballroom (Hall A,B,C)",
      "location": "Washington DC"
    },
    {
      "id": "6",
      "image": "day2e6_home.jpg",
      "detImage": "day2e6_detail.jpg",
      "name": "Program-2",
      "time": "1:00 - 5:00 p.m",
      "description": "Level 3 Ballroom (Hall A,B,C)",
      "location": "Level-3 Ballroom (Hall A,B,C)"
    },
    {
      "id": "7",
      "image": "day2e7_home.jpg",
      "detImage": "day2e7_detail.jpg",
      "name": "Program - 3",
      "time": "6:00 p.m - Midnight",
      "description": "Level 3 Ballroom (Hall A,B,C)",
      "location": "Level-3 Ballroom (Hall A,B,C)"
    },
    {
      "id": "8",
      "image": "day2e8_home.jpg",
      "detImage": "day2e8_detail.jpg",
      "name": "Dinner",
      "time": "5:30 - 7:00 p.m",
      "description": "Level 3 Ballroom (Hall A,B,C)",
      "location": "Level-3 Ballroom (Hall A,B,C)"
    },
    {
      "id": "9",
      "image": "day2e9_home.jpg",
      "detImage": "day2e9_detail.jpg",
      "name": "Food Court",
      "time": "9:00 a.m - 9:00 p.m",
      "description": "Level 3 Ballroom (Hall A,B,C)",
      "location": "Level-3 Ballroom (Hall A,B,C)"
    },
  ];

  var cards3 = [
    // this is for the july 3st event
    {
      "id": "1",
      "image": "day3e1_home.jpg",
      "detImage": 'day3e1_detail.jpg',
      "name": "ATA Conference\nRegistrations",
      "time": "9:00 a.m -\n6:00 p.m",
      "description": "Dear Guests, Welcome to ATA Conference.",
      "location": "Washington DC"
    },
    {
      "id": "2",
      "image": "day3e2_home.jpg",
      "detImage": "day3e2_detail.jpg",
      "name": "TTD Srinivasa\nKalyanam",
      "time": "7:00 - 9:00 a.m",
      "description": "Level 3 Ballroom (Hall A,B,C)",
      "location": "Washington DC"
    },
    {
      "id": "3",
      "image": "day3e3_home.jpg",
      "detImage": "day3e3_detail.jpg",
      "name": "Program - 4",
      "time": "9:00 a.m - 12:00 p.m",
      "description": "Level 3 Ballroom (Hall A,B,C)",
      "location": "Washington DC"
    },
    {
      "id": "4",
      "image": "day3e4_home.jpg",
      "detImage": "day3e4_detail.jpg",
      "name": "Exhibits",
      "time": "10:00 a.m - 9:00 p.m",
      "description": "(AGE - 21+) - Youth Forum - Potomac River",
      "location": "Potomac River"
    },
    {
      "id": "5",
      "image": "day3e5_home.jpg",
      "detImage": "day3e5_detail.jpg",
      "name": "Lunch",
      "time": "Starts 12:00 p.m",
      "description":
          "ATA Awards, Cultural Programs, Guest Performances, Musical Night at Level 3 Ballroom (Hall A,B,C)",
      "location": "Washington DC"
    },
    {
      "id": "6",
      "image": "day3e6_home.jpg",
      "detImage": "day3e6_detail.jpg",
      "name": "Cultural Progam",
      "time": "1:00 - 5:00 p.m",
      "description": "Level 3 Ballroom (Hall A,B,C)",
      "location": "Level-3 Ballroom (Hall A,B,C)"
    },
  ];

  var special = {
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
    return Material(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: BlocBuilder<AppCubits, CubitStates>(
            builder: (context, state) {
              if (state is LoadedState) {
                var info = state.places;
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                          labelPadding:
                              const EdgeInsets.only(left: 20, right: 20),
                          controller: _tabController,
                          labelColor: Colors.black,
                          unselectedLabelColor: Colors.grey,
                          isScrollable: true,
                          indicatorSize: TabBarIndicatorSize.label,
                          indicator: CircleTabIndicator(
                              color: AppColors.redColor, radius: 4),
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
                            //this is the no.of items of the scrolling cards
                            itemCount: 6,
                            // itemCount: info.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext context, int index) {
                              return GestureDetector(
                                child: Container(
                                  margin:
                                      const EdgeInsets.only(right: 15, top: 10),
                                  width: 200,
                                  height: 300,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                    image: DecorationImage(
                                      image: AssetImage(
                                        "img/home_page/july1/" +
                                            cards1[index]['image']!,
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                DetailPage(
                                              name: cards1[index]['name']!,
                                              detImage:
                                                  "img/details_page/july1/" +
                                                      cards1[index]
                                                          ['detImage']!,
                                              time: cards1[index]['time']!,
                                              description: cards1[index]
                                                  ['description']!,
                                              location: cards1[index]
                                                  ['location']!,
                                            ),
                                          ),
                                        );
                                      },
                                    ),
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
                              return GestureDetector(
                                child: Container(
                                  margin:
                                      const EdgeInsets.only(right: 15, top: 10),
                                  width: 200,
                                  height: 300,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                    image: DecorationImage(
                                      image: AssetImage(
                                        "img/home_page/july2/" +
                                            cards2[index]['image']!,
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                DetailPage(
                                              name: cards2[index]['name']!,
                                              detImage:
                                                  "img/details_page/july2/" +
                                                      cards2[index]
                                                          ['detImage']!,
                                              time: cards2[index]['time']!,
                                              description: cards2[index]
                                                  ['description']!,
                                              location: cards2[index]
                                                  ['location']!,
                                            ),
                                          ),
                                        );
                                      },
                                    ),
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
                              return GestureDetector(
                                child: Container(
                                  margin:
                                      const EdgeInsets.only(right: 15, top: 10),
                                  width: 200,
                                  height: 300,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                    image: DecorationImage(
                                      image: AssetImage(
                                        "img/home_page/july3/" +
                                            cards3[index]['image']!,
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                DetailPage(
                                              name: cards3[index]['name']!,
                                              detImage:
                                                  "img/details_page/july3/" +
                                                      cards3[index]
                                                          ['detImage']!,
                                              time: cards3[index]['time']!,
                                              description: cards3[index]
                                                  ['description']!,
                                              location: cards3[index]
                                                  ['location']!,
                                            ),
                                          ),
                                        );
                                      },
                                    ),
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
                          // AppText(
                          //   text: "See all",
                          //   color: AppColors.textColor1,
                          // )
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
                            margin: const EdgeInsets.only(
                              right: 26,
                            ),
                            child: Column(
                              children: [
                                Container(
                                  // margin: const EdgeInsets.only(right: 50),
                                  width: 65,
                                  height: 65,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.white,
                                    image: DecorationImage(
                                        image: AssetImage("img/icons/" +
                                            images.keys.elementAt(index)),
                                        fit: BoxFit.cover),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                HotelPage(
                                              icon_url: icons[index]
                                                  ['icon_url']!,
                                              icon_location: icons[index]
                                                  ['icon_location']!,
                                              icon_name: icons[index]
                                                  ['icon_name']!,
                                              icon_image: icons[index]
                                                  ['icon_image']!,
                                              icon_description: icons[index]
                                                  ['icon_description']!,
                                              icon_text: icons[index]
                                                  ['icon_text']!,
                                            ),
                                          ),
                                        );
                                      },
                                    ),
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
                    // const SizedBox(
                    //   height: 10,
                    // ),

                    // Container(
                    //   height: 120,
                    //   width: double.maxFinite,
                    //   margin: const EdgeInsets.only(left: 20),
                    //   child: ListView.builder(
                    //     itemCount: 4,
                    //     scrollDirection: Axis.horizontal,
                    //     itemBuilder: (_, index) {
                    //       return Container(
                    //         margin: const EdgeInsets.only(right: 30),
                    //         child: Column(
                    //           children: [
                    //             Container(
                    //               // margin: const EdgeInsets.only(right: 50),
                    //               width: 80,
                    //               height: 80,
                    //               decoration: BoxDecoration(
                    //                 borderRadius: BorderRadius.circular(20),
                    //                 color: Colors.white,
                    //                 image: DecorationImage(
                    //                     image: AssetImage("img/icons/" +
                    //                         images.keys.elementAt(index)),
                    //                     fit: BoxFit.cover),
                    //               ),
                    //             ),
                    //             const SizedBox(
                    //               height: 10,
                    //             ),
                    //             Container(
                    //               child: AppText(
                    //                 text: images.values.elementAt(index),
                    //                 color: AppColors.textColor2,
                    //               ),
                    //             ),
                    //           ],
                    //         ),
                    //       );
                    //     },
                    //   ),
                    // ),

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
                            padding: EdgeInsets.only(left: 55),
                            child: Icon(
                              Icons.swipe_down_rounded,
                              color: AppColors.textColor1,
                            ),
                          ),
                          AppText(
                            text: "Scroll Down",
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
                                            "img/home_page/july2/" + // here change images
                                                special.keys.elementAt(index),
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
                                                        fontWeight:
                                                            FontWeight.w500,
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
                                                    Icons
                                                        .calendar_month_outlined,
                                                    color: Colors.white,
                                                    size: 19,
                                                  ),
                                                  Text(
                                                    items[index]
                                                        .rating
                                                        .toString(),
                                                    style: const TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w700,
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

                    Container(
                      margin: const EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText(
                            text: "Photo Gallery",
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

                    // CardsHomePage(),
                  ],
                );
              } else {
                return Container();
              }
            },
          ),
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
