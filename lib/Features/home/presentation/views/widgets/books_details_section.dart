import 'package:bookly_app/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: width * .19, vertical: 18),
            child: const FeaturedListViewItem(
              imageUrl: 'https://www.samsungmobilepress.com/media-assets/galaxy-s25-ultra/',
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          Text(
            'The Jungle Book',
            style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
          ),
          Opacity(
            opacity: .7,
            child: Text(
              'Rudyard Kipling',
              style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
            rating: 6,
            count: 250,
          ),
          const SizedBox(
            height: 37,
          ),
          const BooksAction(),
        ],
      ),
    );
  }
}
