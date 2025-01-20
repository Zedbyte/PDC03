import 'package:flutter/material.dart';

class SubjectWidget extends StatelessWidget {
  final String subject;

  const SubjectWidget({super.key, required this.subject});

  @override
  Widget build(BuildContext context) {
    return Text(
      subject,
      style: Theme.of(context).textTheme.bodyMedium,
    );
  }
}
