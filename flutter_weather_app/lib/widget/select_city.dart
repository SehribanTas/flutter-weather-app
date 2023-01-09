import 'package:flutter/material.dart';

class SelectCity extends StatefulWidget {
  const SelectCity({super.key});

  @override
  State<SelectCity> createState() => _SelectCityState();
}

class _SelectCityState extends State<SelectCity> {
  final _cityTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Şehir Seç'),
      ),
      body: Form(
        child: Row(children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _cityTextController,
                decoration: InputDecoration(
                    labelText: 'şehir',
                    hintText: 'şehir seç',
                    border: OutlineInputBorder()),
              ),
            ),
          ),
          IconButton(
              onPressed: (() {
                Navigator.pop(context);
              }),
              icon: Icon(Icons.search))
        ]),
      ),
    );
  }
}
