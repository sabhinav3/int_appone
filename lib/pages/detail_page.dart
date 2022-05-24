import 'dart:ffi';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:int_appone/misc/colors.dart';
import 'package:int_appone/pages/home_page.dart';
import 'package:int_appone/widgets/app_buttons.dart';
import 'package:int_appone/widgets/app_large_text.dart';
import 'package:int_appone/widgets/app_med_text.dart';
import 'package:int_appone/widgets/app_text.dart';
import 'package:int_appone/widgets/responsive_button.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class DetailPage extends StatefulWidget {
  String name;
  String detImage;
  String time;
  String description;
  String location;
  DetailPage({
    Key? key,
    required this.name,
    required this.detImage,
    required this.time,
    required this.description,
    required this.location,
  }) : super(key: key);

  @override
  State<DetailPage> createState() =>
      // ignore: no_logic_in_create_state
      _DetailPageState(name, detImage, time, description, location);
}

class _DetailPageState extends State<DetailPage> {
  int gottenStars = 3;
  int numberOfRatings = 0;
  int selectedIndex = -1;
  bool submitted = false;
  String name;
  String detImage;
  String time;
  String description;
  String location;
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  FirebaseAuth auth = FirebaseAuth.instance;

  _DetailPageState(
      this.name, this.detImage, this.time, this.description, this.location) {
    getRatings();
    getRatingOfUser();
  }

  void getRatings() {
    final docRef = firestore.collection("eventsRatings").doc("id");
    docRef.get().then(
      (DocumentSnapshot doc) {
        final data = doc.data() as Map<String, dynamic>;
        setState(() {
          print(data['rating']);
          gottenStars = data['rating'].round();
          numberOfRatings = data['numberOfRatings'];
        });
      },
      onError: (e) => print("Error getting document: $e"),
    );
  }

  void getRatingOfUser() {
    if (auth.currentUser?.uid != null) {
      print(auth.currentUser!.uid);
      final docRef = firestore
          .collection("users")
          .doc(auth.currentUser!.uid)
          .collection("eventsRating")
          .doc("id");
      docRef.get().then(
        (DocumentSnapshot doc) {
          final data = doc.data() as Map<String, dynamic>;
          setState(() {
            print(data['rating']);
            selectedIndex = data['rating'] - 1;
            submitted = true;
          });
        },
        onError: (e) => print("Error getting document: $e"),
      );
    }
  }

  void setRatingforEvent() {
    if (auth.currentUser?.uid != null) {
      print(auth.currentUser!.uid);
      final rating = <String, int>{
        "rating": selectedIndex + 1,
      };

      firestore
          .collection("users")
          .doc(auth.currentUser!.uid)
          .collection("eventsRating")
          .doc("id")
          .set(rating)
          .onError((e, _) => print("Error writing document: $e"));
    }
    var ratings = firestore.collection("eventsRatings").doc("id");

// Atomically increment the population of the city by 50.
    ratings.update(
      {
        "numberOfRatings": FieldValue.increment(1),
        "rating": (gottenStars + selectedIndex + 1) / (numberOfRatings + 1)
      },
    );

    setState(() {
      gottenStars =
          ((gottenStars + selectedIndex + 1) / (numberOfRatings + 1)).round();
      submitted = true;
      numberOfRatings = numberOfRatings + 1;
    });
  }

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
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(detImage),
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppLargeText(
                          text: name,
                          color: Colors.black87,
                        ),
                        AppMedText(
                          text: time,
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
                          text: location,
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
                          text: gottenStars.toString(),
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
                            !submitted
                                ? setState(() {
                                    selectedIndex = index;
                                  })
                                : "";
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
                      text: description,
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

                  // the below is the button for " Rate the Event "
                  // ResponsiveButton(
                  //   isResponsive: true,
                  // ),

                  !submitted
                      ? Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(2),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              alignment: Alignment.centerLeft,
                              minimumSize: ui.Size(250, 60),
                              primary: Colors.red,
                              onPrimary: Colors.white,
                              textStyle: TextStyle(
                                fontSize: 20,
                              ),
                              shape: const BeveledRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(7))),
                            ),
                            // child: ResponsiveButton(
                            //   isResponsive: true,
                            // ),

                            child: Wrap(
                              children: [
                                Text(
                                  'Rate the Event',
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Icon(
                                  Icons.double_arrow_rounded,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ],
                            ),
                            onPressed: () {
                              setRatingforEvent();
                            },
                          ),
                        )
                      : Container(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
