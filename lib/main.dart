import 'package:flutter/material.dart';
import 'package:practical_cie_task/SplashScreen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(apiKey: "AIzaSyCoNsgAkou_OSScAtpZs1wE5v7MhCPkLi0",
          appId: '1:440490922687:android:e99a1b0c050663a4bdec0a',
          messagingSenderId: '440490922687',
          projectId: 'emds-e29f4')
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey
      ),
      home: SplashScreen()
    );
  }
}