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
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return  Scaffold(
      backgroundColor: darkBlue,

      body: Padding(
        padding: const EdgeInsets.fromLTRB(20,75,20,75),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                RectangularButton(
                  horizontalPadding: 16,
                  backgroundColor: mainWhite,
                onPressed: () {  },
                child: const Text("skip",style: TextStyle(fontSize: 16, color: darkOrange, fontWeight: FontWeight.w700),),)
              ],
            ),


            const Column(
              children: [
                Text("Purse-nality",style: TextStyle(fontSize: 16, color: mainWhite, fontWeight: FontWeight.w700),),
                Text("Best purse, for the best Person",style: TextStyle(fontSize: 16, color: mainWhite, fontWeight: FontWeight.w700),),



              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RectangularButton(
                  horizontalPadding: width/8,
                  backgroundColor: darkOrange,
                  onPressed: () {  },
                  child: const Text("Register", style: TextStyle(fontSize: 16, color: mainWhite, fontWeight: FontWeight.w700),),),


                RectangularButton(
                  horizontalPadding: width/8,

                  backgroundColor: mainWhite,
                  onPressed: () {  },

                  child: const Text("Sign in", style: TextStyle(fontSize: 16, color: darkOrange, fontWeight: FontWeight.w700),),),
              ],
            ),
          ],
        ),
      ),

    );
  }
}
