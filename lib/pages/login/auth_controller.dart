import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:int_appone/pages/login/login_page.dart';
import 'package:int_appone/pages/login/user_welcome.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AuthController extends GetxController {
  static AuthController instance = Get.find();
  late Rx<User?> _user; // email, password,name...
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void onReady() {
    super.onReady();
    _user = Rx<User?>(auth.currentUser);
    _user.bindStream(auth.userChanges()); // user will be notified
    ever(_user, _initalScreen);
  }

  _initalScreen(User? user) {
    if (user == null) {
      print("Login Page");
      Get.offAll(() => const LoginPage());
    } else {
      Get.offAll(() => UserWelcomePage(email: user.email!));
    }
  }

  Future<String> register(String email, password) async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      return "Success";
    } catch (e) {
      // print(e);
      Get.snackbar(
        "About User",
        "User Message",
        backgroundColor: Colors.redAccent,
        snackPosition: SnackPosition.BOTTOM,
        titleText: const Text(
          "Account creation failed",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        messageText: Text(
          e.toString(),
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      );
      return "Failure";
    }
  }

  Future<String> login(String email, password) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
      return "Success";
    } catch (e) {
      Get.snackbar(
        "About Login",
        "Login Message",
        backgroundColor: Colors.redAccent,
        snackPosition: SnackPosition.BOTTOM,
        titleText: const Text(
          "Login failed",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        messageText: Text(
          e.toString(),
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      );
      return "Failure";
    }
  }

  void logOut() async {
    await auth.signOut();
  }
}
