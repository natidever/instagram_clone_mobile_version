import 'package:flutter/material.dart';
import 'package:instagram_clone/colors.dart';




class ButtonWidget extends StatelessWidget {
final String? buttonText;
final Color? color;
final VoidCallback?tapListner;
final Color ?borderColor;

  const ButtonWidget({
    super.key,
    this.buttonText,
    this.color,
    this.tapListner,
    this.borderColor,

    });


  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: double.infinity,
        height: 35,
        
        decoration: BoxDecoration(
          border: Border.all(
            color: borderColor??color??Colors.grey,
            width: 2,

          ),
          color: color,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(child: Text('$buttonText')),
      ),
    );
  }
}