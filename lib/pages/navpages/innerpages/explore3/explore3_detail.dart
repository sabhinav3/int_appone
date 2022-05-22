import 'package:flutter/material.dart';

class ExploreDetail3 extends StatelessWidget {
  final assetPath, cookiename;

  const ExploreDetail3({this.assetPath, this.cookiename});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF545D68)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text('',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 20.0,
                color: Color(0xFF545D68))),
        actions: <Widget>[
          IconButton(
            icon:
                const Icon(Icons.notifications_none, color: Color(0xFF545D68)),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(children: [
        const SizedBox(height: 15.0),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(cookiename,
              style: const TextStyle(
                  fontFamily: 'Varela',
                  fontSize: 42.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFF17532))),
        ),
        const SizedBox(height: 15.0),
        Hero(
            tag: assetPath,
            child: Image.asset(assetPath,
                height: 500.0, width: 400.0, fit: BoxFit.contain)),
        const SizedBox(height: 20.0),
        const Center(
            // child: Text(
            //   cookieprice,
            //   style: TextStyle(
            //     fontFamily: 'Varela',
            //     fontSize: 22.0,
            //     fontWeight: FontWeight.bold,
            //     color: Color(0xFFF17532),
            //   ),
            // ),
            ),
        const SizedBox(height: 10.0),
        Center(
          child: Text(cookiename,
              style: const TextStyle(
                  color: Color(0xFF575E67),
                  fontFamily: 'Varela',
                  fontSize: 24.0)),
        ),
        const SizedBox(height: 20.0),
        Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width - 50.0,
            child: const Text(
                'Players include,\nKapil Dev\nRakul Preet Singh\nChris Gale, Sunil Gavaskar, Sahith Teegala(PGA Golfer)\nAnd players from Virginia, Maryland, NJ, Raleigh, Detroit, Atlanta and other areas.\nAwards presentation on July 1st evening in the Banquet Night with Kapil Dev, Rakul Preet Singh and other celebrities.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 16.0,
                    color: Color(0xFFB4B8B9))),
          ),
        ),
        const SizedBox(height: 20.0),
        // Center(
        //   child: Container(
        //     width: MediaQuery.of(context).size.width - 50.0,
        //     height: 50.0,
        //     decoration: BoxDecoration(
        //         borderRadius: BorderRadius.circular(25.0),
        //         color: Color(0xFFF17532)),
        //     child: Center(
        //       child: Text(
        //         'Add to cart',
        //         style: TextStyle(
        //             fontFamily: 'Varela',
        //             fontSize: 14.0,
        //             fontWeight: FontWeight.bold,
        //             color: Colors.white),
        //       ),
        //     ),
        //   ),
        // )
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xFFF17532),
        child: const Icon(Icons.favorite),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // bottomNavigationBar: BottomBar(),
    );
  }
}
