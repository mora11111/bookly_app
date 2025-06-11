import 'package:bookly_app/Features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:bookly_app/Features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bookly_app/core/utils/styles.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 30),
          Row(
            children: [
              Container(
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    CupertinoIcons.back,
                    color: Colors.white,
                    size: 20,
                  ),
                  style: IconButton.styleFrom(
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              const Expanded(
                child: CustomSearchTextField(),
              ),
            ],
          ),
          const SizedBox(height: 30),
          const Text(
            'Search Results',
            style: Styles.textStyle18,
          ),
          const SizedBox(height: 20),
          const Expanded(
            child: SearchResultListView(),
          ),
        ],
      ),
    );
  }
}


