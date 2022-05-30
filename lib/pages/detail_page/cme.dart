import 'package:flutter/material.dart';
import 'package:int_appone/misc/colors.dart';
import 'package:int_appone/pages/navpages/innerpages/explore2/explore2.dart';
import 'package:int_appone/widgets/app_buttons.dart';
import 'package:int_appone/widgets/app_large_text.dart';
import 'package:int_appone/widgets/app_med_text.dart';
import 'package:int_appone/widgets/app_text.dart';
import 'package:int_appone/widgets/responsive_button.dart';
import 'package:url_launcher/url_launcher.dart';

class CmePage extends StatefulWidget {
  const CmePage({Key? key}) : super(key: key);

  @override
  State<CmePage> createState() => _CmePageState();
}

class _CmePageState extends State<CmePage> {
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
                    image: AssetImage("img/medical.jpeg"),
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
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppLargeText(
                            text: "Continue Medical \nEducation",
                            color: Colors.black87,
                          ),
                          AppMedText(
                            text: "July 3rd,22\n8 AM - 1 PM",
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
                            text: "Walter E Washington \nConvention Center",
                            color: AppColors.textColor1,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      AppLargeText(
                        text:
                            "Updates on Management of Common Medical Conditions Course Directors: \nDr. Sudhaker D.Rao & Dr. Sharma Prabhakar",
                        color: Colors.black.withOpacity(0.8),
                        size: 20,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      AppText(
                        text: "• Prof. BK. Kishore M.D., Ph.D., MBA",
                        color: Colors.black,
                      ),
                      AppText(
                        text: "Lead Diabetes- Pathophysiology and Management",
                        color: AppColors.mainTextColor,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      AppText(
                        text: "• Dr. Vishal Adma MD, CMQ, CPE",
                        color: Colors.black,
                      ),
                      AppText(
                        text: "Mental Well Being during a Pandemic",
                        color: AppColors.mainTextColor,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      AppText(
                        text: "• Dr. D. Sudhaker Rao MBBS, FACP",
                        color: Colors.black,
                      ),
                      AppText(
                        text: "Vitamin D Deficiency",
                        color: AppColors.mainTextColor,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      AppText(
                        text: "• Dr. Bharath Naravetla, MD",
                        color: Colors.black,
                      ),
                      AppText(
                        text: "Acute Stroke",
                        color: AppColors.mainTextColor,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      AppText(
                        text: "• Dr. Sri Nagesh Paluvoi, MD",
                        color: Colors.black,
                      ),
                      AppText(
                        text: "Immune Deficiency",
                        color: AppColors.mainTextColor,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      AppText(
                        text: "• Dr. Venu Bathini, MD",
                        color: Colors.black,
                      ),
                      AppText(
                        text:
                            "Clots in Unusual Places-Data Limited and Decision Critical",
                        color: AppColors.mainTextColor,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      AppText(
                        text: "• Dr. Sharma Prabhakar, MD, MBA",
                        color: Colors.black,
                      ),
                      AppText(
                        text:
                            "Chronic Kidney Disease with Focus on Indian Population",
                        color: AppColors.mainTextColor,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      AppText(
                        text: "• Dr Sujeeth R. Punnam, MD,",
                        color: Colors.black,
                      ),
                      AppText(
                        text: "Chair, ATA Health Committee",
                        color: AppColors.mainTextColor,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const SizedBox(
                        height: 70,
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
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(2),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        alignment: Alignment.centerLeft,
                        minimumSize: Size(340, 60),
                        primary: Colors.red,
                        onPrimary: Colors.white,
                        textStyle: TextStyle(
                          fontSize: 20,
                        ),
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(7))),
                      ),
                      // child: ResponsiveButton(
                      //   isResponsive: true,
                      // ),

                      child: Wrap(
                        children: [
                          SizedBox(
                            width: 70,
                          ),
                          Icon(
                            Icons.home_work_outlined,
                            color: Colors.white,
                            size: 30,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Visit Website',
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      onPressed: () async {
                        final url =
                            'https://www.ataconference.org/continuemedicaleducation';

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
