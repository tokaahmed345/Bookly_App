part of 'featured_books_cubit.dart';

sealed class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

final class FeaturedBooksInitial extends FeaturedBooksState {}
final class FeaturedBooksSLoading extends FeaturedBooksState {}
final class FeaturedBooksSuccess extends FeaturedBooksState {

  final List<Item>books;

 const  FeaturedBooksSuccess(this.books);
}
final class FeaturedBooksFailure extends FeaturedBooksState {final String errorMessage;

 const FeaturedBooksFailure({required this.errorMessage});}
