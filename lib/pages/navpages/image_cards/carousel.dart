import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:int_appone/pages/navpages/image_cards/responsive.dart';

class DestinationCarousel extends StatefulWidget {
  // DestinationCarousel({required key}) : super(key: key);

  @override
  State<DestinationCarousel> createState() => _DestinationCarouselState();
}

class _DestinationCarouselState extends State<DestinationCarousel> {
  int _current = 0;
  final List<String> images = [
    'img/details_page/july1/day1e1_detail.jpg',
    'img/details_page/july1/day1e2_detail.jpg',
    'img/details_page/july1/day1e3_detail.jpg',
    'img/details_page/july1/day1e4_detail.jpg',
    'img/details_page/july1/day1e5_detail.jpg',
    'img/details_page/july1/day1e6_detail.jpg',
  ];

  final List<String> places = [
    'Abhinav1',
    'Abhinav2',
    'Abhinav3',
    'Abhinav4',
    'Abhinav5',
    'Abhinav6',
  ];

  List<Widget> generateImagesTiles() {
    return images
        .map(
          (element) => ClipRRect(
            child: Image.asset(
              element, // element is the path of the img
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(15.0),
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(top: 50),
      child: Stack(
        children: [
          CarouselSlider(
            items: generateImagesTiles(),
            options: CarouselOptions(
              enlargeCenterPage: true,
              autoPlay: true,
              autoPlayAnimationDuration: const Duration(milliseconds: 500),
              // aspectRatio: 18 / 8,
              onPageChanged: (index, other) {
                setState(() {
                  _current = index;
                });
              },
            ),
          ),
          // AspectRatio(
          //   aspectRatio: 18 / 8,
          //   child: Center(
          //     child: Text(
          //       places[_current],
          //       style: TextStyle(
          //         decoration: TextDecoration.none,
          //         color: Colors.white,
          //         fontSize: MediaQuery.of(context).size.width / 15,
          //       ),
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}
