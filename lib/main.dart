import 'package:doctor_app/screens/profile_screen.dart';
import 'package:doctor_app/screens/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:doctor_app/screens/introduction_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final showHome = prefs.getBool('showHome') ?? false;
  await Firebase.initializeApp();
  runApp( My_doctor_app(showHome : showHome));
}

class My_doctor_app extends StatelessWidget {
  final bool showHome ;
  const My_doctor_app({super.key, required this.showHome});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Doctor',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
        home: showHome ? Welcome_Screen() : Introduction_Screen(),
    );
  }
}

