import 'package:e_commerce_app/View/Reusable%20widgets/rectangular_button_widget.dart';
import 'package:e_commerce_app/View/Screens/registration_screen.dart';
import 'package:e_commerce_app/View/Screens/signin_screen.dart';
import 'package:e_commerce_app/firebase_services/firebase_auth_methods.dart';
import 'package:flutter/material.dart';

import '../UI constants/project_colors.dart';
import 'landing_screen.dart';
import 'market_screen.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool _obscurePassword = true;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  FirebaseAuthMethods _authMethods = FirebaseAuthMethods();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainWhite,
      appBar: AppBar(
        backgroundColor: mainWhite,
        leading: BackButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LandingScreen())), color: darkOrange,),

        elevation: 0,
        centerTitle: true,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Purse",
              style: TextStyle(
                  fontSize: 40, color: darkOrange, fontWeight: FontWeight.w500),
            ),
            Text(
              "-nality",
              style: TextStyle(
                  fontSize: 40, color: darkBlue, fontWeight: FontWeight.w500),
            ),
          ],
        ),
        actions: const [
          SizedBox(
            width: 40,
          )
        ], //to center title
      ),
      body:
      Stack(
          children: [
      Positioned(
        child: Container(
          height: 150,
        decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/purse.png', ),
        fit: BoxFit.contain,
        // colorFilter: ColorFilter.mode(
        //   Colors.white.withOpacity(1),
        //   BlendMode.dstATop,
        // ),
    ),
    ),
    ),
      ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Welcome back',
                style: TextStyle(
                    color: darkOrange, fontWeight: FontWeight.w500, fontSize: 30),
              ),
              const SizedBox(
                height: 50,
              ),
              Column(
                children: [

                  TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  TextFormField(
                    controller: _passwordController,
                    obscureText: _obscurePassword,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscurePassword ? Icons.visibility : Icons.visibility_off,
                        ),
                        onPressed: () {
                          setState(() {
                            _obscurePassword = !_obscurePassword;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50.0),
              RectangularButton(
                backgroundColor: darkOrange,

                  onPressed: () async {
                    dynamic signInResult =
                    await _authMethods.loginWithEmailAndPassword(
                        _emailController.text,
                        _passwordController.text, () {}, () {});

                    if (signInResult == null) {
                      debugPrint("sign in error!");
                    }
                    else {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) =>
                              MarketScreen()));
                    }
                },
                horizontalPadding: 16,
                child: const Text(
                  'Sign in',
                  style: TextStyle(color: mainWhite, fontWeight: FontWeight.w700),
                ),
              ),
              const SizedBox(height: 10,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account? ",
                    style: TextStyle(
                        color: Colors.grey.shade700,
                        fontWeight: FontWeight.w700,
                        fontSize: 16),
                  ),

                  RectangularButton(
                    backgroundColor: Colors.grey.shade100,
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>RegistrationScreen()));
                    },
                    horizontalPadding: 16,
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                          color: darkOrange,
                          fontWeight: FontWeight.w700,
                          fontSize: 20),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10,),

              OutlinedButton.icon(
                onPressed: () {

                  _authMethods.signInAnonymously(() {
                    //on login success
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> MarketScreen()));
                  }, () {
                    //on login failed
                  });
                },
                icon:
                const SizedBox(height: 25, child: Icon(Icons.person, color: Colors.grey,)),
                label: const Text(
                  'Sign in anonymously',
                  style: TextStyle(color: darkBlue, fontSize: 20),
                ),
              ),
            ],
          ),
        ),
    ],
      ),

    );
  }
}
