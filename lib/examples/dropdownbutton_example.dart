import 'package:flutter/material.dart';

class DropDownButtonExample extends StatefulWidget {
  const DropDownButtonExample({super.key});

  @override
  State<DropDownButtonExample> createState() => _DropDownButtonExampleState();
}

class _DropDownButtonExampleState extends State<DropDownButtonExample> {
  String? selectedValue;
  List<String> cities = ["Ankara", "İstanbul", "İzmir", "Bursa"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DropDownButton Example'),
      ),
      body: Center(
        child: Column(
          children: [
            DropdownButton(
                iconDisabledColor: Colors.red,
                iconEnabledColor: Colors.blue,
                icon: Icon(Icons.arrow_drop_up),
                hint: Text("Seçiniz"),
                value: selectedValue,
                items: cities
                    .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    selectedValue = value.toString();
                  });
                })
          ],
        ),
      ),
    );
  }
}
