import 'package:bookly/core/utils/api_services/api_service.dart';
import 'package:bookly/core/utils/errors/failure.dart';
import 'package:bookly/feature/home/data/models/book_model/book_model.dart';
import 'package:bookly/feature/home/data/models/book_model/item.dart';
import 'package:bookly/feature/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImplementation extends HomeRepo {
  ApiService apiService;
  HomeRepoImplementation(this.apiService);
  @override
  Future<Either<Failure, List<Item>>> fetchNewestBooks()async {
var data=await apiService.get(endpoint: 'volumes?Filtering=free-ebooks&Sorting=newest &q=computer science');

try{
  var bookModel=BookModel.fromJson(data);
 return right(bookModel.items??[]);
}catch(e){
  return left(ServerFailure());

}


  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    throw UnimplementedError();
  }
}