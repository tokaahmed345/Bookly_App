import 'package:bookly/core/utils/style/style.dart';
import 'package:bookly/feature/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/feature/home/presentation/views/widgets/custom_best_seller_listview.dart';
import 'package:bookly/feature/home/presentation/views/widgets/custom_book_list_view.dart';
import 'package:flutter/material.dart';

class HomeBodyView extends StatelessWidget {
  const HomeBodyView({super.key});

  @override
  Widget build(BuildContext context) {

    return  const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        
        crossAxisAlignment:CrossAxisAlignment.start,
      
        children: [
        CustomAppBar(),
        CustomBooksListView(),
        SizedBox(height: 50,),
        Text("Best Seller",style: Styles.textStyle18,),
                SizedBox(height: 20,),

        CustomBestSellerListView(),
      ],),
    );
  }
}