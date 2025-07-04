import 'package:bookly/core/utils/errors/failure.dart';
import 'package:bookly/feature/home/data/models/book_model/item.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo{
 Future<Either<Failure,List<Item>>> fetchNewestBooks();
  Future<Either<Failure,List<Item>>>fetchFeaturedBooks();
  Future<Either<Failure,List<Item>>>fetchSimilarBooks({required String category});

}