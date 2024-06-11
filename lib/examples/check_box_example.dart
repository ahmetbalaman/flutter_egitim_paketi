import 'package:flutter/material.dart';

class CheckBoxExample extends StatefulWidget {
  const CheckBoxExample({super.key});

  @override
  State<CheckBoxExample> createState() => _CheckBoxExampleState();
}

class _CheckBoxExampleState extends State<CheckBoxExample> {
  List<String> items = ["Limon", "Tuz", "Biber", "Sarımsak"];
  List<bool> choocesItems = [false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Checkbox Example"),
      ),
      body: Column(
        children: [
          ...List.generate(
            items.length,
            (index) => CheckboxListTile(
              value: choocesItems[index],
              onChanged: (value) {
                setState(() {
                  choocesItems[index] = value ?? false;
                });
              },
              title: Text(items[index]),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              if (choocesItems.any((element) => true)) {
                print("Lütfen en az bir tane malzeme seçiniz");
                return;
              }

              print("Seçilen malzemeler");
              for (int i = 0; i < choocesItems.length; i++) {
                if (choocesItems[i]) {
                  print(items[i]);
                }
              }
            },
            child: Text("Seçilenleri Göster"),
          )
        ],
      ),
    );
  }
}
