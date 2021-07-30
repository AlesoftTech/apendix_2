import 'package:TeSOS/Helpers/ColorsBase.dart';
import 'package:TeSOS/ui/shared/custom_app_menu.dart';
import 'package:flutter/material.dart';

class MainLayoutPage extends StatelessWidget {

  final Widget child;

  const MainLayoutPage({
    Key? key,
    required this.child
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppMenu(),
          Expanded(
              child: child
          ),
        ],
      ),
    );
  }
}
