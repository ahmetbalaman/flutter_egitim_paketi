import 'package:flutter/material.dart';

class RadioButtonExample extends StatefulWidget {
  const RadioButtonExample({super.key});

  @override
  State<RadioButtonExample> createState() => _RadioButtonExampleState();
}

class _RadioButtonExampleState extends State<RadioButtonExample> {
  List<String> soruSiklari = [
    "A şıkkı blabla",
    "B şıkkı blabla",
    "C şıkkı blabla",
    "D şıkkı blabla",
    "E şıkkı blabla"
  ];
  String grupDegeri = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radio Button"),
      ),
      body: Column(
        children: [
          ...List.generate(
            soruSiklari.length,
            (index) => RadioListTile(
              value: soruSiklari[index],
              groupValue: grupDegeri,
              onChanged: (value) {
                setState(() {
                  grupDegeri = value.toString();
                });
              },
              title: Text(soruSiklari[index]),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                if (grupDegeri == "") {
                  print("Lütfen en az bir tane seçim yapınız");
                  return;
                }

                print("$grupDegeri Seçildi");
              },
              child: Text("Cevapla"))
        ],
      ),
    );
  }
}
