import 'package:flutter/material.dart';

class ToggleMessageButton extends StatelessWidget {
  final bool toggle;
  final VoidCallback onPressed;

  const ToggleMessageButton(
      {super.key, required this.toggle, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        fixedSize: const Size(330, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: toggle
          ? Text(
              'Hide Message',
              style: Theme.of(context).textTheme.labelLarge,
            )
          : Text(
              'Show Message',
              style: Theme.of(context).textTheme.labelLarge,
            ),
    );
  }
}
