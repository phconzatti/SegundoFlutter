import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/constants.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({
    super.key,
    required this.title,
    required this.description,
  });

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 2),
      child: Card(
        child: Padding(
          padding: EdgeInsetsGeometry.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Basic Layout", style: KTextStyle.titleTealStyle),
              Text("Description", style: KTextStyle.descriptionText),
            ],
          ),
        ),
      ),
    );
  }
}
