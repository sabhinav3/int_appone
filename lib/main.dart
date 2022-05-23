import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:int_appone/cubit/app_cubit_logics.dart';
import 'package:int_appone/cubit/app_cubits.dart';
import 'package:int_appone/pages/login/auth_controller.dart';
import 'package:int_appone/pages/login/login_page.dart';
import 'package:int_appone/pages/navpages/detail_page_two.dart';
import 'package:int_appone/services/data_services.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

// FLUTTER LOCAL NOTIFICATIONS

// const AndroidNotificationChannel channel = AndroidNotificationChannel(
//   'high_importance_channel',
//   'High importance channel',
//   importance: Importance.high,
//   playSound: true,
// );

// final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
//     FlutterLocalNotificationsPlugin();
// Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
//   await Firebase.initializeApp();
//   print('A message is displayed : ${message.messageId}');
// }

// Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
//   // If you're going to use other Firebase services in the background, such as Firestore,
//   // make sure you call `initializeApp` before using other Firebase services.
//   await Firebase.initializeApp();
//   print('Handling a background message ${message.messageId}');
// }

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      // options: DefaultFirebaseOptions.currentPlatform,
      );

  // FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  // await flutterLocalNotificationsPlugin
  //     .resolvePlatformSpecificImplementation<
  //         AndroidFlutterLocalNotificationsPlugin>()
  //     ?.createNotificationChannel(channel);

  // await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
  //   alert: true,
  //   badge: true,
  //   sound: true,
  // );

  runApp(MyApp());
}

// const AndroidNotificationChannel channel = AndroidNotificationChannel(
//   'high_importance_channel', // id
//   'High Importance Notifications', // title
//   // 'This channel is used for important notifications.', // description
//   importance: Importance.high,
// );
// final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
//     FlutterLocalNotificationsPlugin();

// // class DefaultFirebaseOptions {
// //   static var currentPlatform;
// // }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.

  // void initState() {
  //   // super.initState();
  //   var initializationSettingsAndroid =
  //       new AndroidInitializationSettings('ic_launcher');
  //   var initialzationSettingsAndroid =
  //       AndroidInitializationSettings('@mipmap/ic_launcher');
  //   var initializationSettings =
  //       InitializationSettings(android: initialzationSettingsAndroid);
  //   flutterLocalNotificationsPlugin.initialize(initializationSettings);

  //   FirebaseMessaging.onMessage.listen((RemoteMessage message) {
  //     RemoteNotification? notification = message.notification;
  //     AndroidNotification? android = message.notification?.android;
  //     if (notification != null && android != null) {
  //       flutterLocalNotificationsPlugin.show(
  //           notification.hashCode,
  //           notification.title,
  //           notification.body,
  //           NotificationDetails(
  //             android: AndroidNotificationDetails(
  //               channel.id,
  //               channel.name,
  //               channelDescription: "Your description",
  //               color: Colors.blue,
  //               // TODO add a proper drawable resource to android, for now using
  //               //      one that already exists in example app.
  //               icon: "@mipmap/ic_launcher",
  //             ),
  //           ));
  //     }
  //   });

  //   FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
  //     RemoteNotification? notification = message.notification;
  //     AndroidNotification? android = message.notification?.android;
  //     if (notification != null && android != null) {
  //       // showDialog(
  //       //   context: context,
  //       //   builder: (_) {
  //       //     return AlertDialog(
  //       //       title: Text(notification.title!),
  //       //       content: SingleChildScrollView(
  //       //         child: Column(
  //       //           crossAxisAlignment: CrossAxisAlignment.start,
  //       //           children: [Text(notification.body!)],
  //       //         ),
  //       //       ),
  //       //     );
  //       //   },
  //       // );
  //     }
  //   });

  //   getToken();
  // }

  // String token = "";
  // getToken() async {
  //   token = (await FirebaseMessaging.instance.getToken())!;
  // }

  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: auth.currentUser != null
          ? BlocProvider<AppCubits>(
              create: (context) => AppCubits(
                data: DataServices(),
              ),
              child: const AppCubitLogics(),
            )
          : const LoginPage(),
    );
  }
}
