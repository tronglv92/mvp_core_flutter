import 'package:mvp_flutter/bloc/categories_bloc.dart';

class AppBloc {

  CategoriesBloc categoriesBloc = new CategoriesBloc();

  AppBloc() {
    categoriesBloc = new CategoriesBloc();
  }

  void dispose() {
    categoriesBloc.dispose();
  }
}