import 'package:flutter/widgets.dart';
import 'package:mvp_flutter/bloc/app_bloc.dart';

class AppProvider extends InheritedWidget {
  final AppBloc appBloc;

  AppProvider({
    Key key,
    AppBloc appBloc,
    Widget child,
  })
      : appBloc = appBloc ?? AppBloc(),
        super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    // TODO: implement updateShouldNotify
    return true;
  }

  static AppBloc of(BuildContext context) =>
      (context.inheritFromWidgetOfExactType(AppProvider) as AppProvider)
          .appBloc;
}