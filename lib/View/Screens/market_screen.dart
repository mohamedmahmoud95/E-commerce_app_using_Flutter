import 'package:e_commerce_app/View/Reusable%20widgets/product_card.dart';
import 'package:e_commerce_app/View/Reusable%20widgets/rating_bar_indicator.dart';
import 'package:e_commerce_app/View/UI%20constants/project_colors.dart';
import 'package:flutter/material.dart';

class MarketScreen extends StatefulWidget {
  const MarketScreen({Key? key}) : super(key: key);

  @override
  State<MarketScreen> createState() => _MarketScreenState();
}

class _MarketScreenState extends State<MarketScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainWhite,
      appBar: AppBar(
        title: Text("Market"),
        elevation: 0,
      ),

      body: const ProductCard(),
    );
  }
}
