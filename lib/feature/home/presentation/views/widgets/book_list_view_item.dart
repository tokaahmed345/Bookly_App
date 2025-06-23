
import 'package:bookly/constant.dart';
import 'package:bookly/core/utils/app_path/app_pathes.dart';
import 'package:bookly/core/utils/assets/assets.dart';
import 'package:bookly/core/utils/style/style.dart';
import 'package:bookly/feature/home/presentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        GoRouter.of(context).push(AppPathes.bookDetails);
      },
      child: Row(children: [
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
      ),
      const SizedBox(width: 30,)
      ,Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          SizedBox(
          width: MediaQuery.of(context).size.width*.5,
          child:  Text("Harry Potter and the Globel of the Fire ",maxLines: 2,overflow: TextOverflow.ellipsis, style: Styles.textStyle20.copyWith(fontFamily: KGTSectraFine),)),
        const SizedBox(height: 3,),
        
        const Text("J.k.Rowling",style: Styles.textStyle14,),
        const SizedBox(height: 3,),
        
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:[ 
        Text("19.9 \$",style:Styles.textStyle14.copyWith(fontWeight: FontWeight.bold) ),
        const BookRating(),
      
      
        
        ]),
         
        
        ],),
      ),
      
            
      
      ],),
    );
  }
}
