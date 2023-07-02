


import 'package:e_commerce_app/Models/user.dart';
import 'package:flutter/material.dart';

import '../Reusable widgets/product_card_in_mycart_screen.dart';
import 'market_screen.dart';


class MyCartScreen extends StatefulWidget {
  final User appUser;
  const MyCartScreen({Key? key, required this.appUser}) : super(key: key);

  @override
  State<MyCartScreen> createState() => _MyCartScreenState();
}

class _MyCartScreenState extends State<MyCartScreen> {
  int numInCart = 1;

  @override
  void initState(){
    super.initState();
    if (widget.appUser.inCartProducts!.length > 1) {
      widget.appUser.inCartProducts =
          widget.appUser.inCartProducts?.reversed.toList();
    }
  }

  @override
  Widget build(BuildContext context) {

    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        appBar: AppBar(
          elevation: 0,
          leading: BackButton(color: Colors.orange.shade900,
            onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => const MarketScreen()));},),
          backgroundColor: Colors.white10,
          title:  Text("My Cart", style: TextStyle(color: Colors.orange.shade900, fontSize: 25, fontWeight: FontWeight.normal),),
          centerTitle: true,

          actions: [
            IconButton(onPressed: (){
              setState(() {
                widget.appUser.inCartProducts?.clear();
              });
            }, icon:  Icon(Icons.delete, color: Colors.grey.shade800,)),
          ],
        ),

        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: widget.appUser.inCartProducts!.map((p) =>
                        ProductCardInMyCartScreen(product: p, appUser: currentAppUser,)).toList(),
                  ),
                ),
              ),

              const SizedBox(height: 30,),

              const Padding(
                padding: EdgeInsets.all(15.0),
                child: Divider(thickness: 2,),
              ),
              ElevatedButton(

                  style: ElevatedButton.styleFrom(shape: const StadiumBorder(),
                      backgroundColor: Colors.black, padding: const EdgeInsets.fromLTRB(20,12,20,12) ),

                  onPressed: (){

                  },
                  child: const Text("checkout",style: TextStyle(color: Colors.white, fontSize: 20, ))),

              const SizedBox(height: 30,),

            ],
          ),
        ),
      ),
    );
  }
}
