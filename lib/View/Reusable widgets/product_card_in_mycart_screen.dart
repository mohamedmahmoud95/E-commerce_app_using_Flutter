


import 'package:e_commerce_app/Models/user.dart';
import 'package:flutter/material.dart';

import '../../Models/product.dart';
import '../Screens/my_cart_screen.dart';


class ProductCardInMyCartScreen extends StatefulWidget {
  final Product product;
  final User appUser;
  const ProductCardInMyCartScreen({Key? key, required this.product, required this.appUser}) : super(key: key);

  @override
  State<ProductCardInMyCartScreen> createState() => _ProductCardInMyCartScreenState();
}

class _ProductCardInMyCartScreenState extends State<ProductCardInMyCartScreen> {
  int numInCart = 1;
  @override
  Widget build(BuildContext context) {

    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return    Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
                width: width/4,
                height: 120,
                child: Center(
                  child: Container(
                    color: Colors.grey[100],
                    height: 100,
                    child: Image.network(widget.product.picUrl!,),
                  ),
                )
            ),

            const SizedBox(width: 10,),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.product.name!, style: const TextStyle(fontSize: 20),),
                const SizedBox(height: 10,),
                Text("EGP${widget.product.price}", style: const TextStyle(fontSize: 15),),
              ],
            ),
            const SizedBox(width: 20,),


            Column(
              children: [
                Container(
                  width: width/4,
                  height: 40,
                  // padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  decoration: BoxDecoration(
                    // color: regularColor,
                    border: Border.all(width: 1,color: Colors.grey),
                    borderRadius: const BorderRadius.all(
                        Radius.circular(50)),
                  ),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:[

                  GestureDetector(child: const Text("-",style: TextStyle(color: Colors.black, fontSize: 15),),
                    onTap: (){
                          setState(() {
                            if(numInCart>0) {
                              numInCart--;
                            }
                            else if (numInCart == 0)
                              {
                                setState(() {
                                  widget.appUser.inCartProducts?.remove(widget.product);
                                  //No, let's refresh the current page (please be careful, when used wrong, this might mis-up the context stack (stack of screens))
                                  Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(builder: (context) => MyCartScreen(appUser: currentAppUser) ),
                                        (
                                        Route<dynamic> route) => false,
                                  );
                                });
                              }
                          });

                        },
                  ),
                      Text("$numInCart", style: const TextStyle(color: Colors.black, fontSize: 15)),

                      GestureDetector(child: const Text("+",style: TextStyle(color: Colors.black, fontSize: 15),),
                      onTap: (){
                          setState(() {
                              numInCart++;
                            });
                            }
                        ,),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );

  }
}
