import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:int_appone/pages/navpages/innerpages/explore1/explore1.dart';
import 'package:int_appone/pages/navpages/innerpages/explore1/explore1_detail.dart';

class ExploreDetail3 extends StatelessWidget {
  final assetPath, cookiename;

  ExploreDetail3({this.assetPath, this.cookiename});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFF545D68)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text('',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 20.0,
                color: Color(0xFF545D68))),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications_none, color: Color(0xFF545D68)),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(children: [
        SizedBox(height: 15.0),
        Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Text(cookiename,
              style: TextStyle(
                  fontFamily: 'Varela',
                  fontSize: 42.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFF17532))),
        ),
        SizedBox(height: 15.0),
        Hero(
            tag: assetPath,
            child: Image.asset(assetPath,
                height: 150.0, width: 100.0, fit: BoxFit.contain)),
        SizedBox(height: 20.0),
        Center(
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
        SizedBox(height: 10.0),
        Center(
          child: Text(cookiename,
              style: TextStyle(
                  color: Color(0xFF575E67),
                  fontFamily: 'Varela',
                  fontSize: 24.0)),
        ),
        SizedBox(height: 20.0),
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width - 50.0,
            child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 16.0,
                    color: Color(0xFFB4B8B9))),
          ),
        ),
        SizedBox(height: 20.0),
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
        backgroundColor: Color(0xFFF17532),
        child: Icon(Icons.favorite),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // bottomNavigationBar: BottomBar(),
    );
  }
}
