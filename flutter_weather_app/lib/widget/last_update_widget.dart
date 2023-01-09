import 'package:flutter/material.dart';

class LastUpdateWidget extends StatelessWidget {
  const LastUpdateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Son Güncelleme ' + TimeOfDay(hour: 20, minute: 25).format(context),
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
    );
  }
}
