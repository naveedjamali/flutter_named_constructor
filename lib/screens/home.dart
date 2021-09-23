import 'package:flutter/material.dart';
import 'package:flutter_named_constructor/widgets/my_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyText.title("Essays"),
          MyText.subTitle("Journey of a Homeless"),
          MyText.paragraph(
              "Lorem spum dolar sit amet. Lorem spum dolar sit amet. Lorem spum dolar sit amet. Lorem spum dolar sit amet. Lorem spum dolar sit amet. "),
          MyText.subTitle("Courage to fight"),
          MyText.paragraph(
              "Lorem spum dolar sit amet. Lorem spum dolar sit amet. Lorem spum dolar sit amet. Lorem spum dolar sit amet. Lorem spum dolar sit amet. "),
          MyText.subTitle("Wonderful Scenes in Europe"),
          MyText.paragraph(
              "Lorem spum dolar sit amet. Lorem spum dolar sit amet. Lorem spum dolar sit amet. Lorem spum dolar sit amet. Lorem spum dolar sit amet. "),
          MyText.subTitle("The crow in the City"),
          MyText.paragraph(
              "Lorem spum dolar sit amet. Lorem spum dolar sit amet. Lorem spum dolar sit amet. Lorem spum dolar sit amet. Lorem spum dolar sit amet. ")
        ],
      ),
    );
  }
}
