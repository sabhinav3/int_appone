import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:int_appone/cubit/app_cubit_logics.dart';
import 'package:int_appone/cubit/app_cubits.dart';
import 'package:int_appone/pages/navpages/detail_page_two.dart';
import 'package:int_appone/services/data_services.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

// await Firebase.initializeApp(
//   options = DefaultFirebaseOptions.currentPlatform,
// );

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   var currentPlatform;
//   await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
//   );
//   runApp(MyApp());
// }

// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp().then((value) => Get.put(AuthController()));
//   runApp(MyApp());
// }

class Firebase {
  static initializeApp({options}) {}
}

class DefaultFirebaseOptions {
  static var currentPlatform;
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: BlocProvider<AppCubits>(
      //   create: (context) => AppCubits(
      //     data: DataServices(),
      //   ),
      //   child: const AppCubitLogics(),
      // )
      home: DetailPageTwo(),
    );
  }

  // ==================== below one is the replica of the above code ====================

  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     title: 'Flutter Demo',
  //     theme: ThemeData(
  //       primarySwatch: Colors.blue,
  //     ),
  //     // home: BlocProvider<AppCubits>(
  //     //   create: (context) => AppCubits(
  //     //     data: DataServices(),
  //     //   ),
  //     //   child: AppCubitLogics(),
  //     // )
  //     home: LoginPage(),
  //   );
  // }
}
