import 'package:TeSOS/Helpers/BoxDecorationBase.dart';
import 'package:TeSOS/Helpers/ColorsBase.dart';
import 'package:TeSOS/ui/shared/custom_app_menu.dart';
import 'package:TeSOS/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';

class CounterView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (_, constraints ){
          return(constraints.maxWidth > 900)
              ? _TabletDesktop()
              : _Mobile();
        }
    );
  }
}

class FlexibleQuestion extends StatelessWidget {
  String text;

  FlexibleQuestion(this.text);
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

class FlexibleAnswer extends StatelessWidget {
  String text;

  FlexibleAnswer(this.text);
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
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
        ),
      ),
    );
  }
}

class _Mobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          padding: EdgeInsets.only(
              left: 20,
              right: 20,
              top: 20,
              bottom: 20
          ),
          decoration: BoxDecorationBase.forContentContainer(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              FlexibleQuestion('What is the purpose of the application for you?'),
              FlexibleAnswer('1.To have amputation reports, brigade appointments, to report amputation problems.'),
              FlexibleAnswer('2.Communicate with the unit at the Bogotá headquarters.'),
              FlexibleAnswer('3.Streamline the overall process.'),
              FlexibleAnswer('4.Provide information to physicians about my situation.'),
              FlexibleAnswer('5.Provide and receive information.'),
              FlexibleAnswer('6.Improve the efficiency of the prosthetic team, amputees and patients.'),
              FlexibleAnswer('7.Offer a better quality of life, well-being, concerns and communication.'),
              FlexibleAnswer('8.Increased speed in response.'),
              FlexibleAnswer('9.Patient gives information to be consulted later.'),
              FlexibleAnswer('10.Provide better care.'),
              FlexibleAnswer('11.Make it easier for patients to receive info.'),
              FlexibleAnswer('12.Improve process management.'),
              FlexibleAnswer('13.Streamline the process for the formulation of materials.'),
              FlexibleAnswer('14.Facilitate and streamline processes.'),
              FlexibleAnswer('15.Caring for our prosthises.'),
              FlexibleAnswer('16.Improve care for people outside of Cali and not have to come all the way here.'),
              FlexibleAnswer('17.Improve the service.'),
            ],
          ),
        ),
      ),
    );
  }
}


class _TabletDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Container(
            width: 900,
            padding: EdgeInsets.only(
                left: 20,
                right: 20,
                bottom: 20
            ),
            decoration: BoxDecorationBase.forContentContainer(),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  FlexibleQuestion('What is the purpose of the application for you?'),
                  FlexibleAnswer('1.To have amputation reports, brigade appointments, to report amputation problems.'),
                  FlexibleAnswer('2.Communicate with the unit at the Bogotá headquarters.'),
                  FlexibleAnswer('3.Streamline the overall process.'),
                  FlexibleAnswer('4.Provide information to physicians about my situation.'),
                  FlexibleAnswer('5.Provide and receive information.'),
                  FlexibleAnswer('6.Improve the efficiency of the prosthetic team, amputees and patients.'),
                  FlexibleAnswer('7.Offer a better quality of life, well-being, concerns and communication.'),
                  FlexibleAnswer('8.Increased speed in response.'),
                  FlexibleAnswer('9.Patient gives information to be consulted later.'),
                  FlexibleAnswer('10.Provide better care.'),
                  FlexibleAnswer('11.Make it easier for patients to receive info.'),
                  FlexibleAnswer('12.Improve process management.'),
                  FlexibleAnswer('13.Streamline the process for the formulation of materials.'),
                  FlexibleAnswer('14.Facilitate and streamline processes.'),
                  FlexibleAnswer('15.Caring for our prosthises.'),
                  FlexibleAnswer('16.Improve care for people outside of Cali and not have to come all the way here.'),
                  FlexibleAnswer('17.Improve the service.'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
