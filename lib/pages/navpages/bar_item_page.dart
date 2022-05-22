import 'package:flutter/material.dart';
import 'package:int_appone/pages/navpages/innerpages/explore1/explore1.dart';
import 'package:int_appone/pages/navpages/innerpages/explore2/explore2.dart';
import 'package:int_appone/pages/navpages/innerpages/explore3/explore3.dart';

import 'innerpages/explore1/explore1.dart';

// class BarItemPage extends StatelessWidget {
//   const BarItemPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(child: Center(child: Text("Bar Items Page")));
//   }
// }

class BarItemPage extends StatefulWidget {
  const BarItemPage({Key? key}) : super(key: key);

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

  @override
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
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   elevation: 0.0,
      //   centerTitle: true,
      //   leading: IconButton(
      //     icon: const Icon(Icons.arrow_back, color: Color(0xFF545D68)),
      //     onPressed: () {},
      //   ),
      //   title: const Text('',
      //       style: TextStyle(
      //           fontFamily: 'Varela',
      //           fontSize: 20.0,
      //           color: Color(0xFF545D68))),
      //   actions: <Widget>[
      //     IconButton(
      //       icon: const Icon(Icons.notifications_none, color: Color(0xFF545D68)),
      //       onPressed: () {},
      //     ),
      //   ],
      // ),
      body: ListView(
        padding: const EdgeInsets.only(left: 20.0),
        children: <Widget>[
          const SizedBox(height: 15.0),
          const Text('Explore',
              style: TextStyle(
                  fontFamily: 'Varela',
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold)),
          const SizedBox(height: 15.0),
          TabBar(
            controller: _tabController,
            indicatorColor: Colors.transparent,
            // labelColor: Color(0xFFC88D67),
            labelColor: const Color.fromARGB(255, 239, 53, 53),
            isScrollable: true,
            labelPadding: const EdgeInsets.only(right: 45.0),
            unselectedLabelColor: const Color(0xFFCDCDCD),
            tabs: const [
              Tab(
                child: Text('Invitees',
                    style: TextStyle(
                      fontFamily: 'Varela',
                      fontSize: 21.0,
                    )),
              ),
              Tab(
                child: Text('ATA Committee',
                    style: TextStyle(
                      fontFamily: 'Varela',
                      fontSize: 21.0,
                    )),
              ),
              Tab(
                child: Text('Golf Cup',
                    style: TextStyle(
                      fontFamily: 'Varela',
                      fontSize: 21.0,
                    )),
              )
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height - 50.0,
            width: double.infinity,
            child: TabBarView(
              controller: _tabController,
              children: [
                ExplorePage1(),
                ExplorePage2(),
                ExplorePage3(),
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
