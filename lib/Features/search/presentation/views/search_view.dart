import 'package:bookly_app/Features/search/presentation/views/widgets/search_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bookly_app/Features/search/presentation/manager/search_cubit/search__cubit.dart';
import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/Features/search/data/repos/search_repo_imp.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchCubit(getIt.get<SearchRepoImp>()),
      child: const Scaffold(
        body: SafeArea(child: SearchViewBody()),
      ),
    );
  }
}
