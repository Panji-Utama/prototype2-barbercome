import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'firebase_options.dart';
import 'login.dart';

MaterialColor mainColor = MaterialColor(0xFFD06674, {
  50: Color(0xFFD06674),
  100: Color(0xFFD06674),
  200: Color(0xFFD06674),
  300: Color(0xFFD06674),
  400: Color(0xFFD06674),
  500: Color(0xFFD06674), // 500 is the primary color value
  600: Color(0xFFD06674),
  700: Color(0xFFD06674),
  800: Color(0xFFD06674),
  900: Color(0xFFD06674),
});

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseMessaging.instance.getToken().then((token) {
    print("Firebase Messaging Token: $token");
  });
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Barbercome App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: mainColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Login(),
    );
  }
}
