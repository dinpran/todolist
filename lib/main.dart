import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
// import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:pranlist_todolist/pages/home_page.dart';

void main() async {
  // init the hive
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

  // open a box
  var box = await Hive.openBox('mybox');

  MobileAds.instance.initialize();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ToDoList',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: HomePage(),
    );
  }
}

//https://stackoverflow.com/questions/63400075/ad-failed-to-load-3
