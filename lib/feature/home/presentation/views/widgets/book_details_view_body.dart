
import 'package:bookly/core/utils/style/style.dart';
import 'package:bookly/feature/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/feature/home/presentation/views/widgets/custom_book_details-appbar.dart';
import 'package:bookly/feature/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class  BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody ({super.key});

  @override
  Widget build(BuildContext context) {
        var width=MediaQuery.of(context).size.width;

    return   Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(children: [
        
      const CustomBookDetailsAppBar(),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: width*.17),
        child: const CustomBookImage(),

      ),

      Text("The Jungle Book",style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold)),
     const SizedBox(height: 6,),
     Opacity(
      opacity: .7,
      child: Text("Rudyard Kipling",style: Styles.textStyle18.copyWith(fontStyle: FontStyle.italic,fontWeight: FontWeight.w500),)),
     const SizedBox(height: 10,),

const BookRating(mainAxisAlignment: MainAxisAlignment.center,),

      ],),
    );
  }
}