
import 'package:bookly/feature/home/presentation/views/widgets/book_list_view_item.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView ({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context,index){
      
return     const BookListViewItem();

    });
    
    
    
    
    


  }
}
