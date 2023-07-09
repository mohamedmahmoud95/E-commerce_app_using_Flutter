import 'package:e_commerce_app/View/UI%20constants/project_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RectangularButton extends StatefulWidget {
  final Widget child;
  final Color backgroundColor;
  final VoidCallback onPressed;
  final double horizontalPadding;

  RectangularButton(
      {Key? key,
      required this.child,
      required this.backgroundColor,
      required this.onPressed,
        required this.horizontalPadding
      })
      : super(key: key);

  @override
  State<RectangularButton> createState() => _RectangularButtonState();
}

class _RectangularButtonState extends State<RectangularButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: (){
          widget.onPressed();
        },

        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: widget.backgroundColor,
          ),
          child: Padding(
            padding:  EdgeInsets.only(left: widget.horizontalPadding, right: widget.horizontalPadding, top: 16, bottom: 16),
            child: Center(
              child: widget.child,

            ),
          ),
        ),
      ),
    );
  }
}
