import 'package:bookly/core/utils/style/style.dart';
import 'package:bookly/feature/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:bookly/feature/search/presentation/views/widgets/search_text_field.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SearchTextField(),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "Search Result ",
                  style: Styles.textStyle18,
                ),
                SizedBox(
                  height: 16,
                ),
                Expanded(
                  child: SearchResultListView(),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
