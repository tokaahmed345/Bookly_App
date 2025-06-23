import 'package:bookly/core/utils/errors/failure.dart';
import 'package:bookly/feature/home/data/models/book_model/book_model.dart';
import 'package:bookly/feature/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImplementation extends HomeRepo {
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSeller() {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    throw UnimplementedError();
  }
}