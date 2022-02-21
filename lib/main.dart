import 'package:TeSOS/locator.dart';
import 'package:TeSOS/router/route_generator.dart';
import 'package:TeSOS/services/navigation_service.dart';
import 'package:TeSOS/ui/layout/main_layout_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ProteSOS',
      initialRoute: '/stateful',
      onGenerateRoute: RouteGenerator.generateRoute,
      navigatorKey: locator<NavigationService>().navigatorKey,
      builder: (_, child){
        return MainLayoutPage(
          child: child ?? Container(),
        );
      },
    );
  }

}