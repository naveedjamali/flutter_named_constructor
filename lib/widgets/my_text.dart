import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String label;
  Action myAction = Action.paragraph;
  MyText.title(this.label, {Key? key}) : super(key: key) {
    myAction = Action.title;
  }

  MyText.subTitle(this.label, {Key? key}) : super(key: key) {
    myAction = Action.subtitle;
  }

  MyText.paragraph(this.label, {Key? key}) : super(key: key) {
    myAction = Action.paragraph;
  }

  @override
  Widget build(BuildContext context) {
    TextStyle style = const TextStyle();

    switch (myAction) {
      case Action.title:
        {
          style = const TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black);
          break;
        }
      case Action.subtitle:
        {
          style = const TextStyle(
              fontSize: 17, fontWeight: FontWeight.w600, color: Colors.black);
          break;
        }
      case Action.paragraph:
        {
          style = const TextStyle(
              fontSize: 14, fontWeight: FontWeight.w200, color: Colors.black);
          break;
        }
      default:
        {
          style = const TextStyle(fontSize: 14, color: Colors.black);
          break;
        }
    }
    return Container(
      padding:
          myAction == Action.title ? EdgeInsets.all(16) : EdgeInsets.all(8),
      child: Text(
        label,
        style: style,
      ),
    );
  }
}

enum Action { title, subtitle, paragraph }
