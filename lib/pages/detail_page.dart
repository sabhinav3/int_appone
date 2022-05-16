import 'package:flutter/material.dart';
import 'package:int_appone/misc/colors.dart';
import 'package:int_appone/widgets/app_buttons.dart';
import 'package:int_appone/widgets/app_large_text.dart';
import 'package:int_appone/widgets/app_med_text.dart';
import 'package:int_appone/widgets/app_text.dart';
import 'package:int_appone/widgets/responsive_button.dart';

class DetailPage extends StatefulWidget {
  // var detail1 = {
  //   "day1e1_detail.jpg": "Day1event1",
  //   "day1e2_detail.jpg": "Day1event2",
  //   "day1e3_detail.jpg": "Day1event3",
  //   "day1e4_detail.jpg": "Day1event4",
  //   "day1e5_detail.jpg": "Day1event5",
  //   "day1e6_detail.jpg": "Day1event6",
  // };

  // var detail2 = {
  //   "day2e1_detail.jpg": "Day2event1",
  //   "day2e2_detail.jpg": "Day2event2",
  //   "day2e3_detail.jpg": "Day2event3",
  //   "day2e4_detail.jpg": "Day2event4",
  //   "day2e5_detail.jpg": "Day2event5",
  //   "day2e6_detail.jpg": "Day2event6",
  //   "day2e7_detail.jpg": "Day2event7",
  //   "day2e8_detail.jpg": "Day2event8",
  //   "day2e9_detail.jpg": "Day2event9",
  // };

  // var detail3 = {
  //   "day3e1_detail.jpg": "Day3event1",
  //   "day3e2_detail.jpg": "Day3event2",
  //   "day3e3_detail.jpg": "Day3event3",
  //   "day3e4_detail.jpg": "Day3event4",
  //   "day3e5_detail.jpg": "Day3event5",
  //   "day3e6_detail.jpg": "Day3event6",
  //   "day3e7_detail.jpg": "Day3event6",
  //   "day3e8_detail.jpg": "Day3event6",
  // };

  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int gottenStars = 3;
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    // ignore: dead_code
    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              child: Container(
                // width: double.maxFinite,
                width: 350,
                height: 350,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image:
                        AssetImage("img/details_page/july1/day1e5_detail.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 20,
              top: 50,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.menu),
                    //color : Colors.white, // to change the color of the menu app
                  )
                ],
              ),
            ),
            Positioned(
              top: 320,
              child: Container(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                width: MediaQuery.of(context).size.width,
                height: 500,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppLargeText(
                          text: "Music Concert",
                          color: Colors.black87,
                        ),
                        AppMedText(
                          text: "6:30 - 7:30 p.m",
                          color: AppColors.mainColor,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on,
                          color: AppColors.mainColor,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        AppText(
                          text: "USA, California",
                          color: AppColors.textColor1,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    // The below WRAP Function is to generate stars in below location.
                    // The gotten stars variable is declared at the beginning of the function.
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(5, (index) {
                            return Icon(
                              Icons.star,
                              color: gottenStars > index
                                  ? AppColors.starcolor
                                  : AppColors.textColor2,
                            );
                          }),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        AppText(
                          text: "(4.0)",
                          color: AppColors.textColor2,
                        )
                      ],
                    ),

                    const SizedBox(
                      height: 25,
                    ),

                    AppLargeText(
                      text: "Rate the Event",
                      color: Colors.black.withOpacity(0.8),
                      size: 20,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    AppText(
                      text: "Rate the Event Experience",
                      color: AppColors.mainTextColor,
                    ),

                    const SizedBox(
                      height: 10,
                    ),

                    Wrap(
                      children: List.generate(5, (index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.only(right: 10),
                            child: AppButtons(
                              size: 50,
                              color: selectedIndex == index
                                  ? Colors.white
                                  : Colors.black,
                              backgroundColor: selectedIndex == index
                                  ? Colors.black
                                  : AppColors.buttonBackground,
                              borderColor: selectedIndex == index
                                  ? Colors.black
                                  : AppColors.buttonBackground,
                              text: (index + 1).toString(),
                              // icon: Icons.favorite_border,
                              // isIcon: true,
                            ),
                          ),
                        );
                      }),
                    ),

                    const SizedBox(
                      height: 20,
                    ),

                    AppLargeText(
                      text: "Description",
                      color: Colors.black.withOpacity(0.8),
                      size: 20,
                    ),

                    const SizedBox(
                      height: 10,
                    ),

                    AppText(
                      text:
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi",
                      color: AppColors.mainTextColor,
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              left: 20,
              right: 20,
              child: Row(
                children: [
                  AppButtons(
                    size: 60,
                    color: AppColors.textColor1,
                    backgroundColor: Colors.white,
                    borderColor: AppColors.textColor1,
                    isIcon: true,
                    icon: Icons.favorite_border,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  ResponsiveButton(
                    isResponsive: true,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
