import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:int_appone/pages/login/auth_controller.dart';

import '../../cubit/app_cubit_logics.dart';
import '../../cubit/app_cubits.dart';
import '../../services/data_services.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    AuthController auth = AuthController();
    void signup() async {
      await auth.register(emailController.text, passwordController.text);
      if (auth.auth.currentUser?.email != null) {
        Get.to(
          () => BlocProvider<AppCubits>(
            create: (context) => AppCubits(
              data: DataServices(),
            ),
            child: const AppCubitLogics(),
          ),
        );
      }
    }

    List images = [
      "facebook.jpeg",
      "google.png",
      "twitter.png",
    ];
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: viewportConstraints.maxHeight,
                ),
                child: Column(
                  children: [
                    Container(
                      width:
                          w, // put height & width as 400 ., then it's perfect
                      height: h *
                          0.3, // here we're multiplying by 3 to get the 1/3rd height of the screen
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("img/bg.png"),
                          fit: BoxFit.cover,
                        ),
                        //remove fit property for perfect image
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: h * 0.1,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.yellowAccent.withOpacity(
                                0), // creating a transperant background
                            radius: 75,
                            backgroundImage:
                                const AssetImage("img/logo_ata_nobg.png"),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20, right: 20),
                      width: w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Sign Up",
                            style: TextStyle(
                              fontSize: 45,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Create your Account",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey[500],
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 10,
                                  spreadRadius: 7,
                                  offset: const Offset(1, 1),
                                  color: Colors.grey.withOpacity(0.2),
                                ),
                              ],
                            ),
                            child: TextField(
                              controller: emailController,
                              decoration: InputDecoration(
                                hintText: "Email",
                                prefixIcon: const Icon(
                                  Icons.email_rounded,
                                  color: Colors.amber,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: const BorderSide(
                                    color: Colors.white,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: const BorderSide(
                                    color: Colors.white,
                                    width: 1.0,
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 10,
                                  spreadRadius: 7,
                                  offset: const Offset(1, 1),
                                  color: Colors.grey.withOpacity(0.2),
                                ),
                              ],
                            ),
                            child: TextField(
                              controller: passwordController,
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: "Password",
                                prefixIcon: const Icon(
                                  Icons.password_rounded,
                                  color: Colors.amber,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: const BorderSide(
                                    color: Colors.white,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: const BorderSide(
                                    color: Colors.white,
                                    width: 1.0,
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        AuthController.instance.register(
                            emailController.text.trim(),
                            passwordController.text.trim());
                      },
                      child: Container(
                        width: w * 0.5,
                        height: h *
                            0.08, // here we're multiplying to get the dynamic height based on screen size
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: const DecorationImage(
                              image: AssetImage("img/bg-3.png"),
                              fit: BoxFit
                                  .cover), //remove fit property for perfect image
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(7))),
                          ),
                          child: Wrap(
                            children: [
                              Text(
                                'Sign Up',
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Icon(
                                Icons.login,
                                color: Colors.white,
                                size: 30,
                              ),
                            ],
                          ),
                          // onPressed: () => AuthController()
                          //     .register(emailController.text, passwordController.text),
                          onPressed: () => {
                            {
                              signup(),
                            }
                          },
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    RichText(
                      text: TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => Get.back(),
                        text: "Have an account ?",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey[500],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: w * 0.2, // dynamic height according to width
                    ),
                    RichText(
                      text: TextSpan(
                        text: "Sign-Up using one of the following methods",
                        style: TextStyle(
                          color: Colors.grey[500],
                          fontSize: 16,
                        ),
                        // children: [
                        //   TextSpan(
                        //     text: " Create",
                        //     style: TextStyle(
                        //       color: Colors.black,
                        //       fontSize: 20,
                        //       fontWeight: FontWeight.bold,
                        //     ),
                        //   ),
                        // ],
                      ),
                    ),
                    Wrap(
                      children: List<Widget>.generate(
                        3,
                        (index) {
                          return Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                radius: 20,
                                backgroundImage: AssetImage(
                                  "img/icons/" + images[index],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
