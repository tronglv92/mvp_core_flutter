import 'dart:async';

import 'package:mvp_flutter/constant/variables.dart';
import 'package:mvp_flutter/models/response/categories.dart';
import 'package:mvp_flutter/services/network_util.dart';

class ExploreServices {
  NetworkUtil _netUtil = new NetworkUtil();

  Future<Categories> getCategories(int page, int pageSize) {
    var categoriesUrl = Variables.BASE_URL +
        "/categories/categories?page=${page.toString()}&pageSize=${pageSize
            .toString()}";


    return _netUtil.get(categoriesUrl).then((dynamic res) {
      return new Categories.fromJson(res);
    }).catchError((Object error) {
      throw error;
    }
    );
  }
}