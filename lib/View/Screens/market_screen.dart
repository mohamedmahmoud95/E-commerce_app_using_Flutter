import 'package:e_commerce_app/Models/product.dart';
import 'package:e_commerce_app/Models/user.dart';
import 'package:e_commerce_app/View/Reusable%20widgets/product_card.dart';
import 'package:e_commerce_app/View/Screens/signin_screen.dart';
import 'package:e_commerce_app/View/UI%20constants/project_colors.dart';
import 'package:e_commerce_app/firebase_services/firebase_auth_methods.dart';
import 'package:flutter/material.dart';

import 'my_cart_screen.dart';

class MarketScreen extends StatefulWidget {
  const MarketScreen({Key? key}) : super(key: key);

  @override
  State<MarketScreen> createState() => _MarketScreenState();
}

class _MarketScreenState extends State<MarketScreen> {
  FirebaseAuthMethods _authMethods = FirebaseAuthMethods();
  List <Product> products = [
    sampleProduct1,sampleProduct2,sampleProduct3,sampleProduct4,sampleProduct5,
  ];

  @override
  Widget build(BuildContext context) {

    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: mainWhite,
      appBar: AppBar(
        backgroundColor: mainWhite,
        leading: CircleAvatar(
            backgroundColor: lightOrange,
            child: IconButton(onPressed: (){
              //Navigate to user profile screen
            }, icon: const Icon(Icons.person, color: darkOrange,),)),
        title: const Text("Purse-nality",
          style: TextStyle(color: darkOrange, fontWeight: FontWeight.w500 , fontSize: 30),),
        elevation: 0,
        actions: [
          CircleAvatar(
            backgroundColor: lightOrange,
            child: IconButton(onPressed: (){
              _authMethods.logout();
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignInScreen()));
            }, icon:  Icon(Icons.logout, color: Colors.grey.shade800,)),
          ),
          const SizedBox(width: 10,),
        ],
        centerTitle: true,
      ),

      body:  Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Wrap(
              spacing: 20,
              runSpacing: 20,
              children: products.map((p) => ProductCard(product: p, appUser: sampleAppUser,)).toList(),

            ),
          ),
        ),
      ),


    floatingActionButton: FloatingActionButton(
    onPressed: () {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  MyCartScreen(appUser: sampleAppUser,),));
    },
    backgroundColor: Colors.white,
    child: const Icon(Icons.shopping_cart, color: Colors.deepOrange,),
    ),
    );

  }
}
