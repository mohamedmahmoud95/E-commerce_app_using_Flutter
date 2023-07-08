import 'package:e_commerce_app/View/UI%20constants/project_colors.dart';
import 'package:flutter/cupertino.dart';

class RectangularButton extends StatefulWidget {
  final Widget child;
   RectangularButton({Key? key, required this.child}) : super(key: key);

  @override
  State<RectangularButton> createState() => _RectangularButtonState();
}

class _RectangularButtonState extends State<RectangularButton> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: mainWhite,
      ),
      child: Center(
        child: widget.child,
        // Text(
        //   'Rounded Container',
        //   style: TextStyle(
        //     color: mainWhite,
        //     fontSize: 20.0,
        //   ),
        // ),
      ),
    );
  }
}
