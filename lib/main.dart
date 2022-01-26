import 'package:flutter/material.dart';
import 'package:relaxing_app/constants.dart';
import 'package:relaxing_app/screens/body.dart';
import 'package:relaxing_app/widgets/bottom_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Relaxing App',
      theme: ThemeData(
        fontFamily: 'Cairo',
        scaffoldBackgroundColor: kBackgroundColor,
        primarySwatch: Colors.blue,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Body(size: size),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
