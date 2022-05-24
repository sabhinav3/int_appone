import 'package:flutter/material.dart';
import 'package:int_appone/widgets/app_large_text.dart';

class ExploreDetail3 extends StatelessWidget {
  final assetPath, cookiename, description;

  const ExploreDetail3({this.assetPath, this.cookiename, this.description});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                  color: Colors.redAccent)),
        ),
        const SizedBox(height: 15.0),
        Hero(
            tag: assetPath,
            child: Image.asset(assetPath,
                height: 150.0, width: 100.0, fit: BoxFit.contain)),
        const SizedBox(height: 20.0),
        // const Center(
        //   child: Text(
        //     cookieprice,
        //     style: TextStyle(
        //       fontFamily: 'Varela',
        //       fontSize: 22.0,
        //       fontWeight: FontWeight.bold,
        //       color: Color(0xFFF17532),
        //     ),
        //   ),
        // ),
        // const SizedBox(height: 10.0),
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
            child: Text(description,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 16.0,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFFB4B8B9))),
          ),
        ),
        const SizedBox(height: 20.0),
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width - 50.0,
            height: 75.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                color: Colors.redAccent),
            child: Center(
              child: Text(
                'On Friday, July 1st from 8am onwards \nAt Stone wall Golf Club in Gainesville, Virginia',
                style: TextStyle(
                  fontFamily: 'Varela',
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),

        Container(
          padding: const EdgeInsets.only(left: 20),
          width: MediaQuery.of(context).size.width - 50.0,
          child: Text(
            'Players Include :',
            style: TextStyle(
              fontFamily: 'Varela',
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),

        SizedBox(
          height: 10,
        ),

        Container(
          padding: const EdgeInsets.only(left: 20),
          width: MediaQuery.of(context).size.width - 50.0,
          child: Text(
            '• Kapil Dev\n• Rakul Preet Singh\n• Chris Gale\n• Sunil Gavaskar\n• Sahith Teegala(PGA Golfer)\n• Players from Virginia, Maryland, NJ, Raleigh, Detroit,\n   Atlanta and other areas.',
            style: TextStyle(
              fontFamily: 'Varela',
              fontSize: 12.0,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ),
        const SizedBox(height: 6.0),
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width - 50.0,
            height: 75.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                color: Colors.redAccent),
            child: Center(
              child: Text(
                '  Awards presentation on July 1st evening in the \n  Banquet Night with Kapil Dev,Rakul Preet \n  Singh and other celebrities.',
                style: TextStyle(
                  fontFamily: 'Varela',
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ]),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   backgroundColor: Colors.redAccent,
      //   child: const Icon(Icons.favorite),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // bottomNavigationBar: BottomBar(),
    );
  }
}
