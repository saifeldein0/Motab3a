import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:application/generated/l10n.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
//import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'firebase_options.dart';
//import 'package:application/screens/NotificationsManager.dart'; // Import the notification manager
import 'package:application/screens/Login_screen.dart';

//final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseMessaging messaging = FirebaseMessaging.instance;
  NotificationSettings settings = await messaging.requestPermission(
    alert: true,
    announcement: false,
    badge: true,
    carPlay: false,
    criticalAlert: false,
    provisional: false,
    sound: true,
  );
  print('User granted permission: ${settings.authorizationStatus} ');

  FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    print('got a message whilst in the foreground!');
    print('Message data: ${message.data}');

    if (message.notification != null) {
      print('message also contained a notification: ${message.notification} ');
    }
  });

  // Initialize the notification manager
  // await NotificationManager.init();

  runApp(const MyApp());
}
 

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  

  @override
  State<MyApp> createState() => _MyAppState();
   static void setLocale(BuildContext context, Locale newLocale) {
    _MyAppState? state = context.findAncestorStateOfType<_MyAppState>();
    state?.setLocale(newLocale);
  }
}

class _MyAppState extends State<MyApp> {
   Locale? _locale;

  setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      locale: _locale,
      
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      home: AnimatedSplashScreen(
          duration: 3000,
          splash: 'images/splash.png',
          nextScreen: const LoginScreen(),
          splashTransition: SplashTransition.fadeTransition,
          splashIconSize: 300,
          backgroundColor: const Color(0xFFfaeaf0)),
    );
  }
}
