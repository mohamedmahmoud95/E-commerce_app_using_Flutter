import 'package:e_commerce_app/View/UI%20constants/project_colors.dart';
import 'package:flutter/material.dart';

import '../Reusable widgets/rectangular_button_widget.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: darkBlue,

      body: Column(
        children: [

          RectangularButton(child: Text("skip"),),

        ],
      ),

    );
  }
}
