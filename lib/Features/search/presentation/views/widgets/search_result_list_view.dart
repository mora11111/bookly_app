import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index) {
          return  Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            // child: BookListViewItem(
            //   bookModel: state.books,
            // ),
            child: Text('data'),
          );
        });
  }
}
