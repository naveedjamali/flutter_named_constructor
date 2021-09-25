import 'package:flutter/material.dart';
import 'package:flutter_named_constructor/widgets/my_text.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Write.heading("Heading: Essays"),
          Write.subheading("Sub heading: Journey of a Homeless"),
          Write.caption("caption of story should be small"),
          Write.paragraph(
              "Lorem spum dolar sit amet. Lorem spum dolar sit amet. Lorem spum dolar sit amet. Lorem spum dolar sit amet. Lorem spum dolar sit amet. "),
          Write.subheading("Buffalo must fly"),
          Write.paragraph(
              "Lorem spum dolar sit amet. Lorem spum dolar sit amet. Lorem spum dolar sit amet. Lorem spum dolar sit amet. Lorem spum dolar sit amet. "),
          Write.subheading("Wonderful Scenes in Europe"),
          Write.paragraph(
              "Lorem spum dolar sit amet. Lorem spum dolar sit amet. Lorem spum dolar sit amet. Lorem spum dolar sit amet. Lorem spum dolar sit amet. "),
          Write.subheading("The Crow in the City"),
          Write.paragraph(
              "Lorem spum dolar sit amet. Lorem spum dolar sit amet. Lorem spum dolar sit amet. Lorem spum dolar sit amet. Lorem spum dolar sit amet. ")
        ],
      ),
    );
  }
}
