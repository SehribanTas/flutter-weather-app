import 'package:flutter/material.dart';

class MaxMinTemp extends StatelessWidget {
  const MaxMinTemp({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Max : +20 ',
          style: TextStyle(fontSize: 20),
        ),
        Text('Min : 12', style: TextStyle(fontSize: 20))
      ],
    );
  }
}
