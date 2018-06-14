import 'package:rxdart/rxdart.dart';
import 'package:mvp_flutter/models/response/categories.dart';
import 'package:mvp_flutter/models/response/category.dart';
import 'dart:async';

class CategoriesBloc{
  final BehaviorSubject<List<Category>> _categories =
  BehaviorSubject<List<Category>>(seedValue: []);
  final StreamController<Categories> _setCategoriesController=StreamController<Categories>(); 
  
  CategoriesBloc(){
    _setCategoriesController.stream.listen((categories){
      _categories.add(categories.data);

    });
  }
  Sink<Categories> get setCategories => _setCategoriesController.sink;
  Stream<List<Category>> get categories=>_categories.stream;
  void dispose() {
    _categories.close();
    _setCategoriesController.close();
  }
}