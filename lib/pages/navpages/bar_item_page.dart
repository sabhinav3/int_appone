import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:int_appone/pages/navpages/innerpages/explore.dart';

// class BarItemPage extends StatelessWidget {
//   const BarItemPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(child: Center(child: Text("Bar Items Page")));
//   }
// }

class BarItemPage extends StatefulWidget {
  BarItemPage({Key? key}) : super(key: key);

  @override
  State<BarItemPage> createState() => _BarItemPageState();
}

class _BarItemPageState extends State<BarItemPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  Widget build(BuildContext context) {
    // return Scaffold(
    //   appBar: AppBar(
    //     backgroundColor: Colors.white,
    //     elevation: 0.0,
    //     centerTitle: true,
    //     leading: IconButton(
    //       icon: Icon(
    //         Icons.arrow_back,
    //         color: Color(0xFF545D68),
    //         onPressed: () {},
    //       ),
    //     ),
    //   ),
    // );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFF545D68)),
          onPressed: () {},
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
      body: ListView(
        padding: EdgeInsets.only(left: 20.0),
        children: <Widget>[
          SizedBox(height: 15.0),
          Text('Invitees',
              style: TextStyle(
                  fontFamily: 'Varela',
                  fontSize: 42.0,
                  fontWeight: FontWeight.bold)),
          SizedBox(height: 15.0),
          // TabBar(
          //   controller: _tabController,
          //   indicatorColor: Colors.transparent,
          //   labelColor: Color(0xFFC88D67),
          //   isScrollable: true,
          //   labelPadding: EdgeInsets.only(right: 45.0),
          //   unselectedLabelColor: Color(0xFFCDCDCD),
          //   tabs: [
          //     Tab(
          //       child: Text('Cookies',
          //           style: TextStyle(
          //             fontFamily: 'Varela',
          //             fontSize: 21.0,
          //           )),
          //     ),
          //     Tab(
          //       child: Text('Cookie cake',
          //           style: TextStyle(
          //             fontFamily: 'Varela',
          //             fontSize: 21.0,
          //           )),
          //     ),
          //     Tab(
          //       child: Text('Ice cream',
          //           style: TextStyle(
          //             fontFamily: 'Varela',
          //             fontSize: 21.0,
          //           )),
          //     )
          //   ],
          // ),
          Container(
            height: MediaQuery.of(context).size.height - 50.0,
            width: double.infinity,
            child: TabBarView(
              controller: _tabController,
              children: [
                ExplorePage(),
                ExplorePage(),
                ExplorePage(),
              ],
            ),
          )
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   backgroundColor: Color(0xFFF17532),
      //   child: Icon(Icons.fastfood),
      // ),
    );
  }
}
