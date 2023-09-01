import 'package:flutter/material.dart';
import 'package:hive_localstorage/homepage.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  // intiize hive
  await Hive.initFlutter();

  // open box
  var box = await Hive.openBox("mybox");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
