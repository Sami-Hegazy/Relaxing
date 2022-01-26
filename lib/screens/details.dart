import 'package:flutter/material.dart';
import 'package:relaxing_app/screens/details_body.dart';
import 'package:relaxing_app/widgets/bottom_nav_bar.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: DetailsBody(size: size),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
