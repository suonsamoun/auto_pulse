import 'package:flutter/cupertino.dart';

class AppContext {
  static late BuildContext appContext;
  AppContext(_);
  AppContext.initialize({required BuildContext context}) {
    appContext = context;
  }
  static BuildContext get instance => appContext;
}
