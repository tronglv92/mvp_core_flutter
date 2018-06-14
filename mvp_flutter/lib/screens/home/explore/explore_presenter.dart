import 'package:mvp_flutter/models/response/categories.dart';
import 'package:mvp_flutter/models/response/error_response.dart';
import 'package:mvp_flutter/screens/home/explore/explore_services.dart';


abstract class ExploreScreenContract {
  onCategoriesError(ErrorResponse error);

  onCategoriesSuccess(Categories categories);
}

class ExploreScreenPresenter {
  ExploreScreenContract _view;
  ExploreServices api = new ExploreServices();

  ExploreScreenPresenter(this._view);

  getCategories(int page, int pageSize) {
    api.getCategories(page, pageSize).then((Categories categories) {
      _view.onCategoriesSuccess(categories);
    }).catchError((Object error) {
      ErrorResponse errorResponse = error;
      _view.onCategoriesError(errorResponse);
    });
  }

}