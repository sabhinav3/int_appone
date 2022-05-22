import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:int_appone/pages/login/auth_controller.dart';
import 'package:int_appone/pages/login/login_page.dart';

import '../../cubit/app_cubit_logics.dart';
import '../../cubit/app_cubits.dart';
import '../../services/data_services.dart';

class UserWelcomePage extends StatelessWidget {
  String email;
  AuthController auth = AuthController();
  UserWelcomePage({Key? key, required this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: w, // put height & width as 400 ., then it's perfect
            height: h *
                0.3, // here we're multiplying by 3 to get the 1/3rd height of the screen
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("img/bg-3.png"), fit: BoxFit.cover),
              //remove fit property for perfect image
            ),
            child: Column(
              children: [
                SizedBox(
                  height: h * 0.1,
                ),
                CircleAvatar(
                  backgroundColor: Colors.yellowAccent
                      .withOpacity(0), // creating a transperant background
                  radius: 75,
                  backgroundImage: const AssetImage("img/logo_ata_nobg.png"),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: w,
            margin: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Welcome",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
                Text(
                  email,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 200,
          ),
          GestureDetector(
            onTap: () {
              AuthController.instance.logOut();
            },
            child: Container(
              width: w * 0.5,
              height: h *
                  0.08, // here we're multiplying to get the dynamic height based on screen size
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: const DecorationImage(
                    image: AssetImage("img/bg-3.png"),
                    fit: BoxFit.cover), //remove fit property for perfect image
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  alignment: Alignment.center,
                  minimumSize: Size(250, 60),
                  primary: Colors.red,
                  onPrimary: Colors.white,
                  textStyle: TextStyle(
                    fontSize: 20,
                  ),
                  shape: const BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(7))),
                ),
                child: Wrap(
                  children: [
                    Text(
                      'Logout',
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.logout,
                      color: Colors.white,
                      size: 30,
                    ),
                  ],
                ),
                onPressed: () => {
                  {
                    auth.logOut(),
                    if (auth.auth.currentUser?.email == null)
                      {
                        Get.to(() => const LoginPage()),
                      }
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
