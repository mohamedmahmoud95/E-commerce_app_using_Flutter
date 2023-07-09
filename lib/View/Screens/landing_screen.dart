import 'package:e_commerce_app/View/Screens/market_screen.dart';
import 'package:e_commerce_app/View/Screens/signin_screen.dart';
import 'package:e_commerce_app/View/Screens/registration_screen.dart';
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
                onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> MarketScreen()));
                },
                child: const Text("skip",style: TextStyle(fontSize: 16, color: darkOrange, fontWeight: FontWeight.w700),),)
              ],
            ),

            Container(
              height: height/2,
              child: Stack(
                children: [
                  Positioned(
                    top: 50,
                    left: width/3,
                    child: SizedBox(
                        height: 400,
                        child: Image.asset("assets/purse.png")),
                  ),

              const Positioned(
                top: 50,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Purse",style: TextStyle(fontSize: 40, color: mainOrange, fontWeight: FontWeight.w500),),
                        Text("-nality",style: TextStyle(fontSize: 40, color: mainWhite, fontWeight: FontWeight.w500),),

                      ],
                    ),

                    SizedBox(height: 20,),
                    Text("Fashion Meets Functionality!",style: TextStyle(fontSize: 25, color: mainWhite, fontWeight: FontWeight.w500),),

                  ],
                ),
              ),
           ],
        ),
            ),




            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RectangularButton(
                  horizontalPadding: width/8,
                  backgroundColor: darkOrange,
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> RegistrationScreen()));

                  },
                  child: const Text("Register", style: TextStyle(fontSize: 16, color: mainWhite, fontWeight: FontWeight.w700),),),


                RectangularButton(
                  horizontalPadding: width/8,

                  backgroundColor: mainWhite,
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> SignInScreen()));

                  },

                  child: const Text("Sign in", style: TextStyle(fontSize: 16, color: darkOrange, fontWeight: FontWeight.w700),),),
              ],
            ),
          ],
        ),
      ),

    );
  }
}
