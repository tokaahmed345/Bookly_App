import 'package:bookly/feature/home/presentation/views/widgets/book_list_view_item.dart';
import 'package:flutter/material.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        // return const BookListViewItem();
return Text("data");
      },
    );
  }
}
