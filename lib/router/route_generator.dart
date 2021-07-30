import 'package:TeSOS/ui/views/counter_provider_view.dart';
import 'package:TeSOS/ui/views/counter_view.dart';
import 'package:TeSOS/ui/views/open_questions_view.dart';
import 'package:TeSOS/ui/views/view_404.dart';
import 'package:flutter/material.dart';

class RouteGenerator{
  static Route<dynamic> generateRoute(RouteSettings settings){

    switch(settings.name){

      case '/stateful':
        return _fadeRoute(CounterView(), '/stateful');

      case '/provider':
        return _fadeRoute(CounterProviderView(), '/provider');

      default:
        return _fadeRoute(OpenQuestionsView(), '/404');

    }
  }

  static PageRoute _fadeRoute(Widget child, String routeName){
    return PageRouteBuilder(
      settings: RouteSettings(name: routeName),
        pageBuilder: (_,__,___) =>child,
      transitionDuration: Duration(milliseconds: 200),
      transitionsBuilder: (_, animation, __,___)=>
          FadeTransition(
              opacity: animation,
            child: child,
          )
    );
  }
}