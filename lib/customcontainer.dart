import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final String? sText;
  final IconData? sIcon;
  final Color? boColor;
  final Color? sColor;

  CustomContainer(this.sIcon,this.sText,this.boColor,this.sColor);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 115,
      decoration: BoxDecoration(
          color: boColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: sColor!,
                offset: Offset(0.0,10.0),
                blurRadius: 10
            )
          ]
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(sIcon,size: 30,),
          Text(sText!)
        ],
      ),
    );
  }
}
