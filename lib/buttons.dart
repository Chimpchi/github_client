
import 'package:flutter/material.dart';

class AlertButton extends StatelessWidget {
  const AlertButton({super.key});

@override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.add_alert),
      tooltip: 'Alert Tool',
      onPressed: () => {alertButton(context)},
      );
  }
}

class NextPageButton extends StatelessWidget {
  const NextPageButton({super.key});

@override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => {alertButton(context)},
      tooltip: 'Next Page',
      icon: const Icon(Icons.next_plan_outlined)); 
  }
}

void alertButton(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(content: Text('Why did you click the button?'))
  );
}