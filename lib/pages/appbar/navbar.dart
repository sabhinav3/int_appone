import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:int_appone/pages/detail_page.dart';
import 'package:int_appone/pages/detail_page/about.dart';
import 'package:int_appone/pages/detail_page/cme.dart';
import 'package:int_appone/pages/detail_page/contact.dart';
import 'package:int_appone/pages/navpages/detail_page_two.dart';
import 'package:int_appone/pages/navpages/innerpages/explore1/explore1.dart';
import 'package:int_appone/pages/navpages/innerpages/explore2/explore2.dart';
import 'package:int_appone/pages/navpages/innerpages/explore2/explore2_detail.dart';
import 'package:int_appone/pages/navpages/innerpages/explore3/explore3.dart';
import 'package:int_appone/pages/navpages/innerpages/explore3/explore3_detail.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    final name = "ATA Conference";
    final email = "info@ataworld.org";
    final image = 'img/logo_ata_nobg.png';

    return Drawer(
      child: Material(
        // color: Color.fromRGBO(50, 75, 205, 1),
        color: Colors.amber,
        child: ListView(
          children: [
            buildHeader(
              image: image,
              name: name,
              email: email,
              onClicked: () {},

              // onClicked : () => Navigator.of(context).push(MaterialPageRoute(
              //   builder: builder)=> UserPage(name : name,image: image))
            ),
            Container(
              padding: padding,
              child: Column(
                children: [
                  // 1
                  const SizedBox(
                    height: 30,
                  ),
                  buildMenuItem(
                    text: 'About',
                    icon: Icons.info_rounded,
                    onClicked: () => selectedItem(context, 0),
                  ),
                  // 2
                  const SizedBox(
                    height: 16,
                  ),
                  buildMenuItem(
                    text: 'Golf',
                    icon: Icons.golf_course_rounded,
                    onClicked: () => selectedItem(context, 1),
                  ),
                  // 3
                  const SizedBox(
                    height: 16,
                  ),
                  buildMenuItem(
                    text: 'CME',
                    icon: Icons.medical_services_rounded,
                    onClicked: () => selectedItem(context, 2),
                  ),
                  // 4
                  const SizedBox(
                    height: 16,
                  ),
                  buildMenuItem(
                    text: 'ATA Committee',
                    icon: Icons.group_rounded,
                    onClicked: () => selectedItem(context, 3),
                  ),

                  const SizedBox(
                    height: 16,
                  ),
                  buildMenuItem(
                    text: 'Contact',
                    icon: Icons.quick_contacts_mail_rounded,
                    onClicked: () => selectedItem(context, 4),
                  ),

                  // divider

                  const SizedBox(
                    height: 24,
                  ),

                  // Divider(
                  //   color: Colors.red,
                  // ),

                  // const SizedBox(
                  //   height: 24,
                  // ),

                  // end of divider

                  // 5

                  // buildMenuItem(
                  //   text: 'Notifications',
                  //   icon: Icons.notifications_active_rounded,
                  //   onClicked: () => selectedItem(context, 4),
                  // ),
                  // const SizedBox(
                  //   height: 16,
                  // ),

                  // // 6

                  // buildMenuItem(
                  //   text: 'Notifications',
                  //   icon: Icons.notifications_active_rounded,
                  //   onClicked: () => selectedItem(context, 5),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  buildHeader({
    required String image,
    required String name,
    required String email,
    required VoidCallback onClicked,
  }) =>
      InkWell(
        onTap: onClicked,
        child: Container(
          padding: padding.add(EdgeInsets.symmetric(vertical: 40)),
          child: Row(
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage(image),
                backgroundColor: Colors.red.withOpacity(0),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.red[700],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    email,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.red[700],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );

  buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(
        icon,
        color: color,
      ),
      title: Text(
        text,
        style: TextStyle(color: color),
      ),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();

    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => AboutPage(),
        ));

        break;

      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ExplorePage3(),
        ));

        break;

      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => CmePage(),
        ));

        break;

      case 3:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ExplorePage2(),
        ));

        break;

      case 4:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ContactPage(),
        ));

        break;
    }
  }
}
