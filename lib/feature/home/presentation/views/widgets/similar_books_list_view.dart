import 'package:bookly/feature/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class SimilarListViewBooks extends StatelessWidget {
  const SimilarListViewBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const CustomBookImage();
          }),
    );
  }
}
