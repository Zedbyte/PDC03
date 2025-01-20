import 'package:flutter/material.dart';

class NameWidget extends StatelessWidget {
  final String name;

  const NameWidget({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}
