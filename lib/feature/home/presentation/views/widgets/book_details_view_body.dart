
import 'package:flutter/material.dart';

class  BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody ({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Column(children: [
CustomBookDetailsAppBar(),
    ],);
  }
}
class CustomBookDetailsAppBar  extends StatelessWidget {
  const  CustomBookDetailsAppBar ({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      IconButton(onPressed: (){}, icon: Icon(Icons.close)),
      IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart_outlined)),

    ],);
  }
}