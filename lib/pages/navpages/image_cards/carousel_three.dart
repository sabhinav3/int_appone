import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:int_appone/pages/navpages/image_cards/responsive.dart';

class CarouselThree extends StatefulWidget {
  // DestinationCarousel({required key}) : super(key: key);

  @override
  State<CarouselThree> createState() => _CarouselThree();
}

class _CarouselThree extends State<CarouselThree> {
  int _current = 0;
  final List<String> images = [
    'img/sponsors/gold_sponsors/bbi.jpg',
    'img/sponsors/gold_sponsors/codeyoung.jpg',
    'img/sponsors/gold_sponsors/mantra.jpg',
    'img/sponsors/gold_sponsors/movers.jpg',
    'img/sponsors/gold_sponsors/padmavathi.jpg',
    'img/sponsors/gold_sponsors/ram_associates.jpg',
    'img/sponsors/gold_sponsors/somireddy.jpg',
    'img/sponsors/gold_sponsors/tripura.jpg',
    'img/sponsors/gold_sponsors/vbj.jpg',
  ];

  List<Widget> generateImagesTiles() {
    return images
        .map(
          (element) => ClipRRect(
            child: Image.asset(
              element, // element is the path of the img
              fit: BoxFit.contain,
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
      padding: const EdgeInsets.only(top: 20),
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
