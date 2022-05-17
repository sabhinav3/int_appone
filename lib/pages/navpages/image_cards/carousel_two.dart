import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:int_appone/pages/navpages/image_cards/responsive.dart';

class CarouselTwo extends StatefulWidget {
  // DestinationCarousel({required key}) : super(key: key);

  @override
  State<CarouselTwo> createState() => _CarouselTwo();
}

class _CarouselTwo extends State<CarouselTwo> {
  int _current = 0;
  final List<String> images = [
    'img/sponsors/platinum_sponsors/greenrich.jpg',
    'img/sponsors/platinum_sponsors/lawoffice.jpg',
    'img/sponsors/platinum_sponsors/lovi.jpg',
    'img/sponsors/platinum_sponsors/voip.jpg',
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
      padding: const EdgeInsets.only(top: 0),
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
