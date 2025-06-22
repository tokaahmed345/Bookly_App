
import 'package:bookly/core/utils/assets/assets.dart';
import 'package:flutter/material.dart';

class CustomBestSellerListView extends StatelessWidget {
  const CustomBestSellerListView ({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(children: [
SizedBox(
  height: 100,
  child: AspectRatio(
        aspectRatio: 2.4 / 4,
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(AppAssets.testImage), fit: BoxFit.fill)),
        ),
      ),
)

    ],);
  }
}