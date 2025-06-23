import 'package:bookly/core/utils/errors/failure.dart';
import 'package:bookly/feature/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo{
 Future<Either<Failure,List<BookModel>>> fetchBestSeller();
  Future<Either<Failure,List<BookModel>>>fetchFeaturedBooks();

}