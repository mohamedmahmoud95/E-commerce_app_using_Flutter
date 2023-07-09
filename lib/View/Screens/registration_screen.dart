import 'package:e_commerce_app/View/Reusable%20widgets/rectangular_button_widget.dart';
import 'package:e_commerce_app/View/Screens/signin_screen.dart';
import 'package:flutter/material.dart';

import '../UI constants/project_colors.dart';

class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  bool _obscurePassword = true;
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainWhite,
      appBar: AppBar(
        backgroundColor: mainWhite,
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Create a new account',
              style: TextStyle(
                  color: darkOrange, fontWeight: FontWeight.w700, fontSize: 20),
            ),
            const SizedBox(
              height: 50,
            ),
            Column(
              children: [
                TextFormField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    labelText: 'Name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),

            const SizedBox(height: 16.0),
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
              onPressed: () {},
              horizontalPadding: 16,
              child: const Text(
                'Sign Up',
                style: TextStyle(color: mainWhite, fontWeight: FontWeight.w700),
              ),
            ),
            const SizedBox(height: 10,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account? ",
                  style: TextStyle(
                      color: Colors.grey.shade700,
                      fontWeight: FontWeight.w700,
                      fontSize: 16),
                ),

                RectangularButton(
                  backgroundColor: Colors.grey.shade100,
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignInScreen()));
                  },
                  horizontalPadding: 16,
                  child: const Text(
                    'Sign In',
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
                // Continue with Google
              },
              icon:
                  SizedBox(height: 25, child: Image.asset("assets/google.png")),
              label: const Text(
                'Continue with Google',
                style: TextStyle(color: darkBlue, fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
