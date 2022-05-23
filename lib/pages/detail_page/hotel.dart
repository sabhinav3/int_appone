import 'package:flutter/material.dart';
import 'package:int_appone/misc/colors.dart';
import 'package:int_appone/widgets/app_buttons.dart';
import 'package:int_appone/widgets/app_large_text.dart';
import 'package:int_appone/widgets/app_med_text.dart';
import 'package:int_appone/widgets/app_text.dart';
import 'package:int_appone/widgets/responsive_button.dart';
import 'package:url_launcher/url_launcher.dart';

class HotelPage extends StatefulWidget {
  String icon_name;
  String icon_image;
  String icon_description;
  String icon_location;
  String icon_url;
  String icon_text;
  HotelPage({
    Key? key,
    required this.icon_name,
    required this.icon_image,
    required this.icon_description,
    required this.icon_text,
    required this.icon_location,
    required this.icon_url,
  }) : super(key: key);

  @override
  State<HotelPage> createState() =>
      // ignore: no_logic_in_create_state
      _HotelPageState(icon_name, icon_image, icon_description, icon_text,
          icon_location, icon_url);
}

class _HotelPageState extends State<HotelPage> {
  String icon_image;
  String icon_name;
  String icon_description;
  String icon_text;
  String icon_location;
  String icon_url;

  _HotelPageState(this.icon_name, this.icon_image, this.icon_description,
      this.icon_text, this.icon_location, this.icon_url);
  @override
  Widget build(BuildContext context) {
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
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(icon_image),
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
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppLargeText(
                            text: icon_text,
                            color: Colors.black87,
                          ),
                          AppMedText(
                            text: "Washington, DC 20001",
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
                            text: icon_location,
                            color: AppColors.textColor1,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 25,
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
                        text: icon_description,
                        color: AppColors.mainTextColor,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              left: 20,
              right: 20,
              child: Row(
                children: [
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
                            'View More',
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
                        final url = icon_url;

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
