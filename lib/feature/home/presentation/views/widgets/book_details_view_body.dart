import 'package:bookly/feature/home/presentation/views/widgets/books_details_section.dart';
import 'package:bookly/feature/home/presentation/views/widgets/custom_book_details-appbar.dart';
import 'package:bookly/feature/home/presentation/views/widgets/similar_books_details_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                CustomBookDetailsAppBar(),
                BooksDetailsSection(),
                Expanded(
                  child: SizedBox(
                    height: 60,
                  ),
                ),
                SimilarBooksDetailsSection(),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
