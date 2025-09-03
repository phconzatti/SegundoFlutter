import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/constants.dart';
import 'package:flutter_application_1/views/pages/course_page.dart';
import 'package:flutter_application_1/views/widgets/container_widget.dart';
import 'package:flutter_application_1/views/widgets/hero_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> list = [
      KValue.keyConcepts,
      KValue.basicLayout,
      KValue.cleanUi,
      KValue.fixBugs
    ];
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            HeroWidget(title: 'Flutter Mapp', nextPage: CoursePage(),),
            ...List.generate(5, (index) {
              return ContainerWidget(
                title: list.elementAt(index),
                description: 'Description',
              );
            }),
          ],
        ),
      ),
    );
  }
}
