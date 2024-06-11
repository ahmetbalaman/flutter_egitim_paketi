import 'package:flutter/material.dart';

class ToggleButtonOrnek extends StatefulWidget {
  const ToggleButtonOrnek({super.key});

  @override
  State<ToggleButtonOrnek> createState() => _ToggleButtonOrnekState();
}

class _ToggleButtonOrnekState extends State<ToggleButtonOrnek> {
  List<bool> isSelected = [false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Toggle Button"),
      ),
      body: Column(
        children: [
          ToggleButtons(
              selectedBorderColor: Colors.yellow,
              selectedColor: Colors.green,
              fillColor: Colors.red,
              borderWidth: 10,
              onPressed: (index) {
                for (int i = 0; i < isSelected.length; i++) {
                  isSelected[i] = false;
                }

                setState(() {
                  isSelected[index] = !isSelected[index];
                });
              },
              children: [
                Icon(
                  Icons.ac_unit,
                ),
                Icon(Icons.abc),
                Icon(Icons.access_alarm),
              ],
              isSelected: isSelected)
        ],
      ),
    );
  }
}
