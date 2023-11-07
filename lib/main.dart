// import 'package:flutter/material.dart';
// import 'login.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'firebase_options.dart';

// MaterialColor customColor = MaterialColor(0xFFD06674, {
//   50: Color(0xFFD06674),
//   100: Color(0xFFD06674),
//   200: Color(0xFFD06674),
//   300: Color(0xFFD06674),
//   400: Color(0xFFD06674),
//   500: Color(0xFFD06674), // 500 is the primary color value
//   600: Color(0xFFD06674),
//   700: Color(0xFFD06674),
//   800: Color(0xFFD06674),
//   900: Color(0xFFD06674),
// });

// Future<void> main() async {
//   runApp(const MyApp());
//   await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
//   );
//   WidgetsFlutterBinding.ensureInitialized();
//   String? token = await FirebaseMessaging.instance.getToken();
//   print("This is the token : $token");
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: MaterialColor(0xFFFF6E40, {
//           50: Color(0xFFFF6E40),
//           100: Color(0xFFFF6E40),
//           200: Color(0xFFFF6E40),
//           300: Color(0xFFFF6E40),
//           400: Color(0xFFFF6E40),
//           500: Color(0xFFFF6E40),
//           600: Color(0xFFFF6E40),
//           700: Color(0xFFFF6E40),
//           800: Color(0xFFFF6E40),
//           900: Color(0xFFFF6E40),
//         }),
//       ),
//       home: const Login(),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String? fcmToken;

  @override
  void initState() {
    super.initState();
    getFCMToken();
  }

  Future<void> getFCMToken() async {
    String? token = await FirebaseMessaging.instance.getToken();
    setState(() {
      fcmToken = token;
    });
    print("FCM Token: $token");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter FCM Token Example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('FCM Token Example'),
        ),
        body: Center(
          child: Text(
            'FCM Token: $fcmToken',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
