part of 'featured_books_cubit.dart';

abstract class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

class FeaturedBooksInitial extends FeaturedBooksState {}
class FeaturedBooksLoading extends FeaturedBooksState {}
class FeaturedBooksIFailure extends FeaturedBooksState {
  final String errMessage;

 const FeaturedBooksIFailure(this.errMessage);
}
class FeaturedBooksSuccess extends FeaturedBooksState {
  final List<BookModel> books;

 const FeaturedBooksSuccess(this.books);
}

