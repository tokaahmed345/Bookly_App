import 'package:bookly/core/utils/style/style.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.backgroundColor, required this.text, required this.textColor, this.borderRadius,  this.fontSize});
final Color backgroundColor;
final String text;
final Color textColor;
final BorderRadius?borderRadius;
final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton
      (
      style: TextButton.styleFrom(backgroundColor: backgroundColor,shape: RoundedRectangleBorder(borderRadius: borderRadius??BorderRadius.circular(12))),      
        onPressed: (){}, child: Text(text,style: Styles.textStyle18.copyWith(color: textColor,fontWeight: FontWeight.w900,fontSize: fontSize),)),
    );
  }
}