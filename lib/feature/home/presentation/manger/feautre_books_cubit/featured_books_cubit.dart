import 'package:bloc/bloc.dart';
import 'package:bookly/feature/home/data/models/book_model/item.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit() : super(FeaturedBooksInitial());
}
