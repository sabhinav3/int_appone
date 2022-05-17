import 'package:flutter/material.dart';
import 'package:int_appone/pages/navpages/bar_item_page.dart';
import 'package:int_appone/pages/home_page.dart';
import 'package:int_appone/pages/navpages/my_page.dart';
import 'package:int_appone/pages/navpages/search_page.dart';

import '../appbar/navbar.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    const HomePage(),
    const BarItemPage(),
    const SearchPage(),
    const MyPage()
  ];

  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // changes are being made here ( start )

      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () => Scaffold.of(context).openDrawer(),
              icon: Icon(
                Icons.menu_rounded,
                color: Colors.red[700],
              ),
            );
          },
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'ATA',
                style: TextStyle(
                  color: Color.fromARGB(255, 240, 24, 36),
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  fontFamily: 'RobotoMono',
                ),
              ),
            ),
            Image.asset(
              'img/logo_ata_nobg.png',
              fit: BoxFit.fill,
              height: 45,
            ),
          ],
        ),
      ),

      // body: NestedScrollView(
      //   headerSliverBuilder: ((context, innerBoxIsScrolled) => [
      //     SliverAppBar(
      //       title: Text(""),
      //       centerTitle: true,
      //     )
      //   ],),
      // ),
      // changes are being made here ( end )

      backgroundColor: Colors.white,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 0,
        selectedFontSize: 0,
        // to change the background colour of the bottom nav bar., we should use below two lines
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        items: const [
          BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons
                  .apps)), // replaced title by label : (actual :: title:("home") )
          BottomNavigationBarItem(
              label: "Bar", icon: Icon(Icons.bar_chart_sharp)),
          BottomNavigationBarItem(label: "Search", icon: Icon(Icons.search)),
          BottomNavigationBarItem(label: "My", icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}
