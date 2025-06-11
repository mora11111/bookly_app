import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(16),
      ),
      child: TextField(
        style: Styles.textStyle16.copyWith(
          color: Colors.white,
        ),
        decoration: InputDecoration(
          enabledBorder: buildOutlineInputBorder(),
          focusedBorder: buildOutlineInputBorder(),
          hintText: 'Search',
          hintStyle: Styles.textStyle16.copyWith(
            color: Colors.grey,
          ),
          prefixIcon: const Icon(
            CupertinoIcons.search,
            color: Colors.grey,
          ),
          suffixIcon: IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.clear,
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide.none,
    );
  }
}
