import 'package:flutter/material.dart';
import 'package:mvp_flutter/app_provider.dart';
import 'package:mvp_flutter/models/response/categories.dart';
import 'package:mvp_flutter/models/response/category.dart';
import 'package:mvp_flutter/models/response/error_response.dart';
import 'package:mvp_flutter/screens/home/explore/explore_presenter.dart';

class ExploreScreen extends StatefulWidget {
  @override
  State<ExploreScreen> createState() {
    // TODO: implement createState
    return new ExploreState();
  }


}

class ExploreState extends State<ExploreScreen>
    implements ExploreScreenContract {
  ExploreScreenPresenter _presenter;
  BuildContext _ctx;
  ExploreState() {
    _presenter = new ExploreScreenPresenter(this);
    _presenter.getCategories(1, 40);
  }

  @override
  Widget build(BuildContext context) {
    _ctx=context;
    final appBloc = AppProvider.of(context);
    // TODO: implement build
    return new Scaffold(
      body: new StreamBuilder(
          stream: appBloc.categoriesBloc.categories,
          builder: (context, AsyncSnapshot<List<Category>> snapshot) {
            if (snapshot.hasData)
              {
                return new ListView.builder(
                    itemBuilder: (BuildContext context, int index) => new ExploreItem(category: snapshot.data[index]),
                    itemCount: snapshot.data.length
                );
              }
              else
                {
                  return new Text("ranh qua");
                }

          }

      ),

    );
  }

  @override
  onCategoriesError(ErrorResponse error) {
    // TODO: implement onCategoriesError
    print("error categories");
    print(error);
  }

  @override
  onCategoriesSuccess(Categories categories) {
    // TODO: implement onCategoriesSuccess
    print("get categories success");
    var appBloc = AppProvider.of(context);
    appBloc.categoriesBloc.setCategories.add(categories);
  }

}

class ExploreItem extends StatelessWidget {

  ExploreItem({this.category}):assert(category!=null);
  final Category category;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    
    var url;
    if(category.files.length>0)
      url=category.files[0].medium_url;
    return new Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: new Container(
        width: MediaQuery
            .of(context)
            .size
            .width,
        height: 150.0,
        decoration: new BoxDecoration(
          image: new DecorationImage(
              image: url==null?new AssetImage('assets/bg_explore.png'): new NetworkImage(url),
              fit: BoxFit.cover),),
        child: new Container(
          decoration: new BoxDecoration(

              color: new Color.fromRGBO(0, 0, 0, 0.38)),
          child: new Center(
            child: new Text(category.name,
              style: new TextStyle(color: Colors.white, fontSize: 18.0),),
          ),
        ),

      ),
    );
  }

}