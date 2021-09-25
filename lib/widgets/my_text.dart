import 'package:flutter/material.dart';

class Write extends StatelessWidget {
  final String label;

  _Action myAction = _Action.paragraph;

  Write.heading(this.label, {Key? key}) : super(key: key) {
    myAction = _Action.heading;
  }

  Write.subheading(this.label, {Key? key}) : super(key: key) {
    myAction = _Action.subheading;
  }

  Write.paragraph(this.label, {Key? key}) : super(key: key) {
    myAction = _Action.paragraph;
  }

  Write.caption(this.label, {Key? key}) : super(key: key) {
    myAction = _Action.caption;
  }

  @override
  Widget build(BuildContext context) {
    TextStyle style = const TextStyle();

    switch (myAction) {
      case _Action.heading:
        {
          style = const TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black);
          break;
        }
      case _Action.subheading:
        {
          style = const TextStyle(
              fontSize: 17, fontWeight: FontWeight.w600, color: Colors.black);
          break;
        }
      case _Action.paragraph:
        {
          style = const TextStyle(
              fontSize: 14, fontWeight: FontWeight.w200, color: Colors.black);
          break;
        }
        case _Action.caption:
        {
          style = const TextStyle(
              fontSize: 14, fontWeight: FontWeight.w200, color: Colors.grey, fontStyle: FontStyle.italic);
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
          myAction == _Action.heading ? const EdgeInsets.all(16) : const EdgeInsets.all(8),
      child: Text(
        label,
        style: style,
      ),
    );
  }
}

enum _Action { heading, subheading, paragraph, caption }
