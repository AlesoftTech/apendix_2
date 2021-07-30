import 'package:TeSOS/Helpers/BoxDecorationBase.dart';
import 'package:TeSOS/providers/counter_provider.dart';
import 'package:TeSOS/ui/shared/custom_app_menu.dart';
import 'package:TeSOS/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class CounterProviderView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (_, constraints ){
          if(constraints.maxWidth > 1600){
            return _Desktop3();
          }
          if(constraints.maxWidth < 1600 && constraints.maxWidth > 1300){
            return _Desktop();
          }
          if(constraints.maxWidth < 1300 && constraints.maxWidth > 700){
            return _Desktop2();
          }
          if(constraints.maxWidth < 700){
            return _Mobile();
          }
          return Container();
        }
    );
  }
}

class FlexibleContainer extends StatelessWidget {
  String text;
  String imagePath;

  FlexibleContainer(this.text, this.imagePath);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecorationBase.forContentContainer(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Text(
                this.text,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Image.asset(this.imagePath),
            ),
          ],
        ),
      ),
    );
  }
}

class FlexibleContainerMobile extends StatelessWidget {
  String text;
  String imagePath;

  FlexibleContainerMobile(this.text, this.imagePath);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 20,
        left: 20,
        right: 20,
        top: 20
      ),
      child: Container(
        decoration: BoxDecorationBase.forContentContainer(),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                child: Text(
                  this.text,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Image.asset(this.imagePath),
              )
            ],
          ),
        ),
      ),
    );
  }
}
class _Desktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Center(child: Warning('The x-axis represents a satisfaction scale, with 1 being less agree and 5 being strongly agree. The y-axis represents the number of users who responded to this rating.')),
          GridView.count(
            crossAxisCount: 3,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            scrollDirection: Axis.vertical,
            children: [
              FlexibleContainer('Would you use this application frequently?', 'assets/images/1.png'),
              FlexibleContainer('Is this application complex-difficult to use?', 'assets/images/2.png'),
              FlexibleContainer('Is the application easy to use?', 'assets/images/3.png'),
              FlexibleContainer('Is it easy to understand the organization of the application?', 'assets/images/4.png'),
              FlexibleContainer('Do you imagine that most people would learn to use this application very quickly?', 'assets/images/5.png'),
              FlexibleContainer('Do you find the application very easy to use?', 'assets/images/6.png'),
              FlexibleContainer('Do you feel confident using this application?', 'assets/images/7.png'),
              FlexibleContainer('Did you need to learn a lot of things before being able to use this application?', 'assets/images/8.png'),
              FlexibleContainer('Are the colors of the application eye-catching, attractive?', 'assets/images/9.png'),
              FlexibleContainer('Does the typeface and font size allow you to read texts easily?', 'assets/images/10.png'),
              FlexibleContainer('Does the wording of the texts help you to understand the functionalities easily?', 'assets/images/11.png'),
            ],
          ),
        ],
      ),
    );
  }
}


class _Desktop2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Center(child: Warning('The x-axis represents a satisfaction scale, with 1 being less agree and 5 being strongly agree. The y-axis represents the number of users who responded to this rating.')),
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            scrollDirection: Axis.vertical,
            children: [
              FlexibleContainer('Would you use this application frequently?', 'assets/images/1.png'),
              FlexibleContainer('Is this application complex-difficult to use?', 'assets/images/2.png'),
              FlexibleContainer('Is the application easy to use?', 'assets/images/3.png'),
              FlexibleContainer('Is it easy to understand the organization of the application?', 'assets/images/4.png'),
              FlexibleContainer('Do you imagine that most people would learn to use this application very quickly?', 'assets/images/5.png'),
              FlexibleContainer('Do you find the application very easy to use?', 'assets/images/6.png'),
              FlexibleContainer('Do you feel confident using this application?', 'assets/images/7.png'),
              FlexibleContainer('Did you need to learn a lot of things before being able to use this application?', 'assets/images/8.png'),
              FlexibleContainer('Are the colors of the application eye-catching, attractive?', 'assets/images/9.png'),
              FlexibleContainer('Does the typeface and font size allow you to read texts easily?', 'assets/images/10.png'),
              FlexibleContainer('Does the wording of the texts help you to understand the functionalities easily?', 'assets/images/11.png'),
            ],
          ),
        ],
      ),
    );
  }
}

class _Desktop3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Center(child: Warning('The x-axis represents a satisfaction scale, with 1 being less agree and 5 being strongly agree. The y-axis represents the number of users who responded to this rating.')),
          GridView.count(
            crossAxisCount: 4,
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            scrollDirection: Axis.vertical,
            children: [
              FlexibleContainer('Would you use this application frequently?', 'assets/images/1.png'),
              FlexibleContainer('Is this application complex-difficult to use?', 'assets/images/2.png'),
              FlexibleContainer('Is the application easy to use?', 'assets/images/3.png'),
              FlexibleContainer('Is it easy to understand the organization of the application?', 'assets/images/4.png'),
              FlexibleContainer('Do you imagine that most people would learn to use this application very quickly?', 'assets/images/5.png'),
              FlexibleContainer('Do you find the application very easy to use?', 'assets/images/6.png'),
              FlexibleContainer('Do you feel confident using this application?', 'assets/images/7.png'),
              FlexibleContainer('Did you need to learn a lot of things before being able to use this application?', 'assets/images/8.png'),
              FlexibleContainer('Are the colors of the application eye-catching, attractive?', 'assets/images/9.png'),
              FlexibleContainer('Does the typeface and font size allow you to read texts easily?', 'assets/images/10.png'),
              FlexibleContainer('Does the wording of the texts help you to understand the functionalities easily?', 'assets/images/11.png'),
            ],
          ),
        ],
      ),
    );
  }
}

class _Mobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Warning('The x-axis represents a satisfaction scale, with 1 being less agree and 5 being strongly agree. The y-axis represents the number of users who responded to this rating.'),
            FlexibleContainerMobile('Would you use this application frequently?', 'assets/images/1.png'),
            FlexibleContainerMobile('Is this application complex-difficult to use?', 'assets/images/2.png'),
            FlexibleContainerMobile('Is the application easy to use?', 'assets/images/3.png'),
            FlexibleContainerMobile('Is it easy to understand the organization of the application?', 'assets/images/4.png'),
            FlexibleContainerMobile('Do you imagine that most people would learn to use this application very quickly?', 'assets/images/5.png'),
            FlexibleContainerMobile('Do you find the application very easy to use?', 'assets/images/6.png'),
            FlexibleContainerMobile('Do you feel confident using this application?', 'assets/images/7.png'),
            FlexibleContainerMobile('Did you need to learn a lot of things before being able to use this application?', 'assets/images/8.png'),
            FlexibleContainerMobile('Are the colors of the application eye-catching, attractive?', 'assets/images/9.png'),
            FlexibleContainerMobile('Does the typeface and font size allow you to read texts easily?', 'assets/images/10.png'),
            FlexibleContainerMobile('Does the wording of the texts help you to understand the functionalities easily?', 'assets/images/11.png'),
          ],
        ),
      ),
    );
  }
}

class Warning extends StatelessWidget {

  String text;

  Warning(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:20, right: 20, left: 20),
      child: Container(
        width: 520,
          decoration: BoxDecoration(
            color: Colors.grey[350],
            border: Border.all(width: 1, color: Colors.transparent),
            borderRadius: const BorderRadius.all(Radius.circular(20)),
          ),
        child:
        Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: 10,
                      right: 10
                  ),
                  child: Icon(
                    FontAwesomeIcons.infoCircle,
                    color: Colors.black,
                    size: 34,
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.only(
                        right: 30,
                        top: 10,
                        bottom: 10,
                        left: 10
                    ),
                    child: Text(
                      this.text,
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
                    )
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

