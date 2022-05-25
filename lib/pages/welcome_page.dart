import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:int_appone/cubit/app_cubits.dart';
import 'package:int_appone/widgets/app_large_text.dart';
import 'package:int_appone/widgets/app_text.dart';
import 'package:int_appone/widgets/responsive_button.dart';

import '../misc/colors.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = ["ata_bg_2.png", "bg2.png", "bg-3.png"];

  var info = [
    {
      "id": "1",
      "text1": "\n \nWelcome to the \nworld of ATA",
      "text2": "Explore Events",
      "text3": "ATA conference gives you a great ",
    },
    {
      "id": "2",
      "text1": "Chief Guests of ATA",
      "text2": "These are the invitees",
      "text3": "ATA conference",
    },
    {
      "id": "3",
      "text1": "Chief Guests of ATA-3",
      "text2": "Invitees",
      "text3": "ATA conference",
    },
  ];

  // List text = [""]; // if we want to add seperate text items for each slider., then follow syntax like images.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("img/" + images[index]),
                      fit: BoxFit.cover)),
              child: Container(
                margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppLargeText(
                          text: info[index]['text1']!,
                          color: Colors.red,
                        ),
                        AppText(
                          text: info[index]['text2']!,
                          size: 25,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: 250,
                          child: AppText(
                            text: info[index]['text3']!,
                            color: AppColors.textColor3,
                            size: 14,
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),

                        // this is the button :

                        GestureDetector(
                          onTap: () {
                            BlocProvider.of<AppCubits>(context).getData();
                          },
                          child: SizedBox(
                            width: 75,
                            child: Row(children: [
                              ResponsiveButton(
                                width: 75,
                              ),
                            ]),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: List.generate(3, (indexDots) {
                        return Container(
                          margin: const EdgeInsets.only(bottom: 2),
                          width: 8,
                          height: index == indexDots ? 25 : 8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: index == indexDots
                                ? AppColors.redColor
                                : AppColors.redColor.withOpacity(0.3),
                          ),
                        );
                      }),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
