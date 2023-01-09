import 'package:flutter/cupertino.dart';

class LocationWidget extends StatelessWidget {
  String selectCity = 'Gaziantep';
  LocationWidget({super.key, required this.selectCity});

  @override
  Widget build(BuildContext context) {
    return Text(
      selectCity,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
    );
  }
}
