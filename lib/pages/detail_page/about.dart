import 'package:flutter/material.dart';
import 'package:int_appone/misc/colors.dart';
import 'package:int_appone/widgets/app_buttons.dart';
import 'package:int_appone/widgets/app_large_text.dart';
import 'package:int_appone/widgets/app_med_text.dart';
import 'package:int_appone/widgets/app_text.dart';
import 'package:int_appone/widgets/responsive_button.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
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
                    image: AssetImage("img/ata_about.jpeg"),
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
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(
                        Icons.arrow_back_rounded,
                        size: 35,
                        color: Colors.red,
                      )
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
                          text: "About ATA",
                          color: Colors.black87,
                        ),
                        AppMedText(
                          text: "Since 2005",
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
                          text: "P O Box 4496\nNaperville, IL 60567",
                          color: AppColors.textColor1,
                        )
                      ],
                    ),
                    // const SizedBox(
                    //   height: 20,
                    // ),

                    // The below WRAP Function is to generate stars in below location.
                    // The gotten stars variable is declared at the beginning of the function.
                    // Row(
                    //   children: [
                    //     Wrap(
                    //       children: List.generate(5, (index) {
                    //         return Icon(
                    //           Icons.star,
                    //           color: gottenStars > index
                    //               ? AppColors.starcolor
                    //               : AppColors.textColor2,
                    //         );
                    //       }),
                    //     ),
                    //     const SizedBox(
                    //       width: 10,
                    //     ),
                    //     AppText(
                    //       text: "(4.0)",
                    //       color: AppColors.textColor2,
                    //     )
                    //   ],
                    // ),

                    const SizedBox(
                      height: 25,
                    ),

                    // AppLargeText(
                    //   text: "Rate the Event",
                    //   color: Colors.black.withOpacity(0.8),
                    //   size: 20,
                    // ),
                    // const SizedBox(
                    //   height: 5,
                    // ),
                    // AppText(
                    //   text: "Rate the Event Experience",
                    //   color: AppColors.mainTextColor,
                    // ),

                    // const SizedBox(
                    //   height: 10,
                    // ),

                    // Wrap(
                    //   children: List.generate(5, (index) {
                    //     return InkWell(
                    //       onTap: () {
                    //         setState(() {
                    //           selectedIndex = index;
                    //         });
                    //       },
                    //       child: Container(
                    //         margin: const EdgeInsets.only(right: 10),
                    //         child: AppButtons(
                    //           size: 50,
                    //           color: selectedIndex == index
                    //               ? Colors.white
                    //               : Colors.black,
                    //           backgroundColor: selectedIndex == index
                    //               ? Colors.black
                    //               : AppColors.buttonBackground,
                    //           borderColor: selectedIndex == index
                    //               ? Colors.black
                    //               : AppColors.buttonBackground,
                    //           text: (index + 1).toString(),
                    //           // icon: Icons.favorite_border,
                    //           // isIcon: true,
                    //         ),
                    //       ),
                    //     );
                    //   }),
                    // ),

                    // const SizedBox(
                    //   height: 20,
                    // ),

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
                          "Unity and Integrity of the community are the two core guiding principles of ATA, formed with the sole intent of promoting Telugu culture heritage, values, and advancement of Telugu origin people across the USA with the motto of “Passion for Our culture, Compassion for our People”. 17th ATA Conference will further showcase the prowess of Telugu Intellectuals, Technological experts, Doctors, Prominent businessmen, cultural and literary experts both from India and the USA.",
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
                  // ResponsiveButton(
                  //   isResponsive: true,
                  // )

                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(2),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        alignment: Alignment.centerLeft,
                        minimumSize: Size(250, 60),
                        primary: Colors.red,
                        onPrimary: Colors.white,
                        textStyle: TextStyle(
                          fontSize: 20,
                        ),
                        shape: const BeveledRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(7))),
                      ),
                      // child: ResponsiveButton(
                      //   isResponsive: true,
                      // ),

                      child: Wrap(
                        children: [
                          Text(
                            'Visit Website',
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            Icons.home_work_outlined,
                            color: Colors.white,
                            size: 30,
                          ),
                        ],
                      ),
                      onPressed: () async {
                        final url = 'https://www.ataconference.org/';

                        // ignore: deprecated_member_use
                        if (await canLaunch(url)) {
                          // ignore: deprecated_member_use
                          await launch(
                            url,
                            forceSafariVC: true,
                            forceWebView: true,
                            enableJavaScript: true,
                          );
                        }
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
