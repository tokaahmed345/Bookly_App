
import 'package:bookly/feature/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class CustomBooksListView extends StatelessWidget {
  const CustomBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
            height: MediaQuery.of(context).size.height*.3,
    
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return  const CustomBookImage();
      },
      ),
    );
  }
}