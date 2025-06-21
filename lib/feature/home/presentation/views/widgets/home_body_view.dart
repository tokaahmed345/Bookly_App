import 'package:bookly/core/utils/style/style.dart';
import 'package:bookly/feature/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/feature/home/presentation/views/widgets/custom_book_list_view.dart';
import 'package:flutter/material.dart';

class HomeBodyView extends StatelessWidget {
  const HomeBodyView({super.key});

  @override
  Widget build(BuildContext context) {
        print('Building HomeBodyView');

    return  SingleChildScrollView(
      child: Column(
        
        crossAxisAlignment:CrossAxisAlignment.start,
      
        children: [
        CustomAppBar(),
        CustomBooksListView(),
        SizedBox(height: 50,),
        Text("Best Seller",style: Styles.titleMedium,)
      ],),
    );
  }
}