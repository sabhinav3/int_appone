import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:int_appone/pages/detail_page.dart';
import 'package:int_appone/pages/navpages/innerpages/explore1/explore1.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    final name = "ATA Conference";
    final email = "ataconforance@org";
    final image =
        'https://www.google.com/imgres?imgurl=https%3A%2F%2Fstatic.wixstatic.com%2Fmedia%2F0b9d0b_58e08d4c411448a4aab16ce42c0311a9~mv2.png%2Fv1%2Ffill%2Fw_640%2Ch_440%2Cal_c%2Cq_85%2Cusm_0.66_1.00_0.01%2Cenc_auto%2F0b9d0b_58e08d4c411448a4aab16ce42c0311a9~mv2.png&imgrefurl=https%3A%2F%2Fwww.ataconference.org%2F&tbnid=CyAE-pb8p9E_9M&vet=12ahUKEwjX07ub9-X3AhW6i9gFHRMnDIAQMygEegUIARDBAQ..i&docid=MQp63c2zKiGtRM&w=640&h=440&q=ata%20conference&client=safari&ved=2ahUKEwjX07ub9-X3AhW6i9gFHRMnDIAQMygEegUIARDBAQ';

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
                    text: 'People',
                    icon: Icons.people_alt_rounded,
                    onClicked: () => selectedItem(context, 0),
                  ),
                  // 2
                  const SizedBox(
                    height: 16,
                  ),
                  buildMenuItem(
                    text: 'Favourites',
                    icon: Icons.favorite_outlined,
                    onClicked: () => selectedItem(context, 1),
                  ),
                  // 3
                  const SizedBox(
                    height: 16,
                  ),
                  buildMenuItem(
                    text: 'About',
                    icon: Icons.workspaces_outline,
                    onClicked: () => selectedItem(context, 2),
                  ),
                  // 4
                  const SizedBox(
                    height: 16,
                  ),
                  buildMenuItem(
                    text: 'Updates',
                    icon: Icons.update_rounded,
                    onClicked: () => selectedItem(context, 3),
                  ),

                  // divider

                  const SizedBox(
                    height: 24,
                  ),

                  Divider(
                    color: Colors.red,
                  ),

                  const SizedBox(
                    height: 24,
                  ),

                  // end of divider

                  // 5

                  buildMenuItem(
                    text: 'Notifications',
                    icon: Icons.notifications_active_rounded,
                    onClicked: () => selectedItem(context, 4),
                  ),
                  const SizedBox(
                    height: 16,
                  ),

                  // 6

                  buildMenuItem(
                    text: 'Notifications',
                    icon: Icons.notifications_active_rounded,
                    onClicked: () => selectedItem(context, 5),
                  ),
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
                radius: 30,
                backgroundImage: NetworkImage(image),
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
          builder: (context) => ExplorePage1(),
        ));

        break;

      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => DetailPage(),
        ));

        break;
    }
  }
}
