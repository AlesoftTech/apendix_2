import 'package:TeSOS/Helpers/ColorsBase.dart';
import 'package:TeSOS/services/navigation_service.dart';
import 'package:TeSOS/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';

import '../../locator.dart';

class CustomAppMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

      return LayoutBuilder(
          builder: (_, constraints ){
            return(constraints.maxWidth > 520)
            ? _TabletDesktopMenu()
            : _MobileMenu();
          }
      );

  }
}

class _TabletDesktopMenu extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: ColorsBase.lightGreen,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      child: Row(
        children: [
          Flexible(
              child: Container(
                width: 200,
                  child: Image.asset('assets/images/isotipoAzul.png')
              )),
          CustomFlatButton(
            text: 'Propósito',
            onPressed: () =>locator<NavigationService>().navigateTo('/stateful'),
            color: Colors.black,
          ),
          SizedBox(width: 10),
          CustomFlatButton(
            text: 'Gráficas',
            onPressed: () =>locator<NavigationService>().navigateTo('/provider'),
            color: Colors.black,
          ),
          SizedBox(width: 10),
          CustomFlatButton(
            text: 'Preguntas Abiertas',
            onPressed: () =>locator<NavigationService>().navigateTo('/abc123'),
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}

class _MobileMenu extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: ColorsBase.lightGreen,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
              child: Center(
                child: Container(
                    height: 50,
                    child: Image.asset('assets/images/isotipoAzul.png')
                ),
              )),
          CustomFlatButton(
            text: 'Purpose',
            onPressed: () =>locator<NavigationService>().navigateTo('/stateful'),
            color: Colors.black,
          ),
          SizedBox(width: 10),
          CustomFlatButton(
            text: 'Graphics',
            onPressed: () =>locator<NavigationService>().navigateTo('/provider'),
            color: Colors.black,
          ),
          SizedBox(width: 10),
          CustomFlatButton(
            text: 'Open Questions',
            onPressed: () =>locator<NavigationService>().navigateTo('/abc123'),
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}

