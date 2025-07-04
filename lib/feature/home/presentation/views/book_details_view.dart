import 'package:bloc/bloc.dart';
import 'package:bookly/feature/home/data/models/book_model/item.dart';
import 'package:bookly/feature/home/presentation/manger/similarbooks/similar_books_cubit.dart';
import 'package:bookly/feature/home/presentation/views/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key, required this.bookModel});
final Item bookModel;

  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}
class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBooks(category: widget.bookModel.volumeInfo.categories![0])
;    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: BookDetailsViewBody(bookModel: widget.bookModel,),
      ),
    );
  }
}
