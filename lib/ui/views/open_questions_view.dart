import 'package:TeSOS/Helpers/BoxDecorationBase.dart';
import 'package:TeSOS/providers/counter_provider.dart';
import 'package:TeSOS/ui/shared/custom_app_menu.dart';
import 'package:TeSOS/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class OpenQuestionsView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (_, constraints ){

          if(constraints.maxWidth > 1300){
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
  String tablePath;

  FlexibleContainer(this.text, this.imagePath, this.tablePath);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecorationBase.forContentContainer(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
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
            Padding(
              padding: const EdgeInsets.all(20),
              child: Image.asset(
                  this.tablePath,
              ),
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
  String tablePath;

  FlexibleContainerMobile(this.text, this.imagePath, this.tablePath);
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
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Image.asset(this.tablePath),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class _Desktop extends StatefulWidget {
  @override
  State<_Desktop> createState() => _DesktopState();
}

class _DesktopState extends State<_Desktop> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height);
    final double itemWidth = size.width / 2;
    return SingleChildScrollView(
      child: Column(
        children: [
          Center(child: Warning('The x-axis represents a satisfaction scale, with 1 being less agree and 5 being strongly agree. The y-axis represents the number of users who responded to this rating.')),
          GridView.count(
            crossAxisCount: 3,
            shrinkWrap: true,
            childAspectRatio:(itemWidth / itemHeight),
            physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            children: [
              FlexibleContainer('The most user-friendly functionality was', 'assets/images/12.png', 'assets/images/12Table.png'),
              FlexibleContainer('The functionality you liked the most was', 'assets/images/13.png', 'assets/images/13Table.png'),
              FlexibleContainer('The functionality you did not like was', 'assets/images/14.png', 'assets/images/14Table.png'),
            ],
          ),
          OpenContainer(),
        ],
      ),
    );
  }
}


class _Desktop2 extends StatefulWidget {
  @override
  State<_Desktop2> createState() => _Desktop2State();
}

class _Desktop2State extends State<_Desktop2> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height) / 2;
    final double itemWidth = size.width / 2;
    return SingleChildScrollView(
      child: Column(
        children: [
          Center(child: Warning('The x-axis represents a satisfaction scale, with 1 being less agree and 5 being strongly agree. The y-axis represents the number of users who responded to this rating.')),
          GridView.count(
            crossAxisCount: 2,
            childAspectRatio:(itemWidth / itemHeight),
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            children: [
              FlexibleContainer('The most user-friendly functionality was', 'assets/images/12.png', 'assets/images/12Table.png'),
              FlexibleContainer('The functionality you liked the most was', 'assets/images/13.png', 'assets/images/13Table.png'),
              FlexibleContainer('The functionality you did not like was', 'assets/images/14.png', 'assets/images/14Table.png'),
            ],
          ),
          OpenContainer(),
        ],
      ),
    );
  }
}

class _Desktop3 extends StatefulWidget {
  @override
  State<_Desktop3> createState() => _Desktop3State();
}

class _Desktop3State extends State<_Desktop3> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height);
    final double itemWidth = size.width / 2;
    return SingleChildScrollView(
      child: Column(
        children: [
          Center(child: Warning('The x-axis represents a satisfaction scale, with 1 being less agree and 5 being strongly agree. The y-axis represents the number of users who responded to this rating.')),
          GridView.count(
            crossAxisCount: 4,
            shrinkWrap: true,
            childAspectRatio:(itemWidth / itemHeight),
            scrollDirection: Axis.vertical,
            children: [
              FlexibleContainer('The most user-friendly functionality was', 'assets/images/12.png', 'assets/images/12Table.png'),
              FlexibleContainer('The functionality you liked the most was', 'assets/images/13.png', 'assets/images/13Table.png'),
              FlexibleContainer('The functionality you did not like was', 'assets/images/14.png', 'assets/images/14Table.png'),
            ],
          ),
          OpenContainer(),
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
            Center(child: Warning('The x-axis represents a satisfaction scale, with 1 being less agree and 5 being strongly agree. The y-axis represents the number of users who responded to this rating.')),
            FlexibleContainerMobile('The most user-friendly functionality was', 'assets/images/12.png', 'assets/images/12Table.png'),
            FlexibleContainerMobile('The functionality you liked the most was', 'assets/images/13.png', 'assets/images/13Table.png'),
            FlexibleContainerMobile('The functionality you did not like was', 'assets/images/14.png', 'assets/images/14Table.png'),
            OpenContainer(),
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

class OpenContainer extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:20, right: 20, left: 20),
      child: Container(
        width: double.infinity,
        decoration: BoxDecorationBase.forContentContainer(),
        child:
        Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _FlexibleQuestion('I did not like it because'),
                _FlexibleAnswer('You should taking into account people with lower visual acuity'),
                _FlexibleAnswer('High delivery time'),
                _FlexibleAnswer('Should specify the purpose of the appointment'),
                _FlexibleAnswer('Other patient\'s advices are very personal'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _FlexibleQuestion extends StatelessWidget {
  String text;

  _FlexibleQuestion(this.text);
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 10,
          bottom: 10,
        ),
        child: Text(
          this.text,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class _FlexibleAnswer extends StatelessWidget {
  String text;

  _FlexibleAnswer(this.text);
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 10,
          bottom: 10,
        ),
        child: Text(
          this.text,
          textAlign: TextAlign.start,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
        ),
      ),
    );
  }
}

