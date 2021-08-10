import 'package:flutter/material.dart';
import 'package:flutterapp/inputPage.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

void main() {
   WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  runApp(
  MyApp());}

class MyApp extends StatelessWidget {

  // void initState() {
  //   super.initState();
  //   // Load ads.
  // }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     // title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff0A0E21),
        scaffoldBackgroundColor: Color(0xff0A0E21),
      ),
      home: InputPage(),
    );
  }
}

