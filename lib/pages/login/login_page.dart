import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:int_appone/pages/login/auth_controller.dart';
import 'package:int_appone/pages/login/signup_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:int_appone/cubit/app_cubit_logics.dart';
import 'package:int_appone/cubit/app_cubits.dart';
import 'package:int_appone/services/data_services.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    AuthController auth = AuthController();
    // void login() {
    //   AuthController auth = AuthController();
    //   auth.login(emailController.text, passwordController.text);
    //   if (auth.auth.currentUser?.email != null) {
    //     Navigator.push(
    //       context,
    //       MaterialPageRoute(builder: (context) => const HomePage()),
    //     );
    //   }
    // }

    // return Scaffold(body: SafeArea(
    // child: LayoutBuilder(
    //   builder: (BuildContext context, BoxConstraints viewportConstraints) {
    //     return SingleChildScrollView(
    //       child: ConstrainedBox(
    //         constraints: BoxConstraints(
    //           minHeight: viewportConstraints.maxHeight,
    //         ),
    //        child : column

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
                            fit: BoxFit
                                .cover), //remove fit property for perfect image
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20, right: 20),
                      width: w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Hello",
                            style: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Sign into your Account",
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
                          Row(
                            children: [
                              Expanded(
                                child: Container(), // empty container
                              ),
                              const Text(
                                "Forgot your password ?",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 70,
                    ),
                    Container(
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
                              'Login',
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
                        onPressed: () => {
                          {
                            auth.login(
                                emailController.text, passwordController.text),
                            if (auth.auth.currentUser?.email != null)
                              {
                                Get.to(() => BlocProvider<AppCubits>(
                                      create: (context) => AppCubits(
                                        data: DataServices(),
                                      ),
                                      child: const AppCubitLogics(),
                                    ))
                              }
                          }
                        },
                      ),
                    ),
                    SizedBox(
                      height: w * 0.2, // dynamic height according to width
                    ),
                    RichText(
                      text: TextSpan(
                          text: "Don't have an account ?",
                          style: TextStyle(
                            color: Colors.grey[500],
                            fontSize: 20,
                          ),
                          children: [
                            TextSpan(
                              text: " Create",
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap =
                                    () => Get.to(() => const SignUpPage()),
                            ),
                          ]),
                    )
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
