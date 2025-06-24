import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.imageUrl});
final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          decoration:  BoxDecoration(
              image: DecorationImage(
                
                  image: NetworkImage(imageUrl), fit: BoxFit.fill)),
        ),
      ),
    );
  }
}
