import 'package:bookly/core/utils/errors/failure.dart';
import 'package:bookly/feature/home/data/models/book_model/item.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRepo{
  Future<Either<Failure,List<Item>>>searchBook(String query);

}