
import 'package:e_commerce_app/Models/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../Models/product.dart';
import '../Screens/product_details_screen.dart';

class ProductCard extends StatefulWidget {
  final Product product;
  final User appUser;

  ProductCard({Key? key, required this.product, required this.appUser}) : super(key: key);

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool addedToCart = false;
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return
      GestureDetector(
        onTap: (){
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) =>  (ProductDetailsScreen(product: widget.product, appUser: currentAppUser,)),
            ),
          );
        },
        child: Card(

          child: SizedBox(
            width: width/2 - 30,
            height: 250,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      color: Colors.grey[100],
                      height: 140,
                      child: Image.network(widget.product.picUrl!,),
                    ),
                  ),

                  const SizedBox(height: 20,),

                  Text(widget.product.name!, style: const TextStyle(fontSize: 15),),

                  const SizedBox(height: 10,),

                  RatingBarIndicator(
                    rating: widget.product.rating,
                    itemCount: 5,
                    itemSize: 15.0,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, _) =>
                    const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$${widget.product.price}", style: const TextStyle(fontSize: 15,),),
                      InkWell(child:  Icon(Icons.shopping_cart,
                        color:  widget.appUser.inCartProducts!.contains(widget.product) ?
                       Colors.deepOrange : Colors.grey.shade800, size: 30,),
                        onTap: (){
                          setState(() {
                            addedToCart = ! addedToCart;

                            if (addedToCart == true) {
                              widget.appUser.inCartProducts!.contains(widget.product) ?
                            widget.appUser.inCartProducts?.remove(widget.product)
                                :
                            widget.appUser.inCartProducts?.add(widget.product);
                            }
                          });
                        }
                        ,),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      );
  }
}
