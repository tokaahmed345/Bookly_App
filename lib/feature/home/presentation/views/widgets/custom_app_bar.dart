
import 'package:bookly/core/utils/assets/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.only(left: 10.0,top: 30,),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Image.asset(AppAssets.logo,height: 30,),IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.magnifyingGlass,))],),
    );
  }
}