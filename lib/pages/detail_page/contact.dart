import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:int_appone/misc/colors.dart';
import 'package:int_appone/pages/navpages/innerpages/explore2/explore2.dart';
import 'package:int_appone/widgets/app_buttons.dart';
import 'package:int_appone/widgets/app_large_text.dart';
import 'package:int_appone/widgets/app_med_text.dart';
import 'package:int_appone/widgets/app_text.dart';
import 'package:int_appone/widgets/responsive_button.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
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
                    image: AssetImage("img/contact.png"),
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
                            text: "Contact",
                            color: Colors.black87,
                          ),
                          AppMedText(
                            text: "Ph.No: 630-783-2250",
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
                      const SizedBox(
                        height: 25,
                      ),
                      AppLargeText(
                        text: "American Telugu Association",
                        color: Colors.black,
                        size: 20,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      AppText(
                        text: "• E-mail: info@ataworld.org",
                        color: Colors.black,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      AppLargeText(
                        text: "Follow Us :",
                        color: AppColors.mainColor,
                        size: 25,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Facebook : ",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            TextSpan(
                              text: "ATA Facebook",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () async {
                                  // ignore: deprecated_member_use
                                  if (await canLaunch(
                                          "https://www.facebook.com/groups/128389840744") ==
                                      true) {
                                    // ignore: deprecated_member_use
                                    launch(
                                        "https://www.facebook.com/groups/128389840744");
                                  } else {
                                    print("Can't launch URL");
                                  }
                                },
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "YouTube : ",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            TextSpan(
                              text: "ATA TeluguTV",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () async {
                                  // ignore: deprecated_member_use
                                  if (await canLaunch(
                                          "https://www.youtube.com/c/ATATV1") ==
                                      true) {
                                    // ignore: deprecated_member_use
                                    launch("https://www.youtube.com/c/ATATV1");
                                  } else {
                                    print("Can't launch URL");
                                  }
                                },
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Twitter : ",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            TextSpan(
                              text: "@ataworld",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () async {
                                  // ignore: deprecated_member_use
                                  if (await canLaunch(
                                          "https://twitter.com/ataworld") ==
                                      true) {
                                    // ignore: deprecated_member_use
                                    launch("https://twitter.com/ataworld");
                                  } else {
                                    print("Can't launch URL");
                                  }
                                },
                            ),
                          ],
                        ),
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
                            Icons.contact_mail_rounded,
                            color: Colors.white,
                            size: 30,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Contact',
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      onPressed: () async {
                        final url = 'https://www.ataconference.org/contact';

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
