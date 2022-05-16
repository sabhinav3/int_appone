import 'package:flutter/material.dart';
import 'package:int_appone/pages/login/auth_controller.dart';

class UserWelcomePage extends StatelessWidget {
  String email;
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
              child: const Center(
                child: Text(
                  "Sign Out",
                  style: TextStyle(
                    fontSize: 29,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
