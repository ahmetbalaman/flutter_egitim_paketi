import 'package:flutter/material.dart';

class AppBarExample extends StatelessWidget {
  AppBarExample({super.key});
  List<String> secenekler = [
    "Seçenek 9",
    "Seçenek 10",
    "Seçenek 11",
    "Seçenek 12"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              print("Arama tuşuna basıldı");
            },
            icon: Icon(Icons.search),
          ),
          PopupMenuButton(
              onSelected: (value) {
                switch (value) {
                  case 0:
                    print("Seçenek 9 seçildi");
                    break;
                  case 1:
                    print("Seçenek 10 seçildi");
                    break;
                  case 2:
                    print("Seçenek 11 seçildi");
                    break;
                  case 3:
                    print("Seçenek 12 seçildi");
                    break;
                  default:
                    print("Hatalı seçim yapıldı");
                    break;
                }
              },
              itemBuilder: (context) => secenekler
                  .map((e) => PopupMenuItem<int>(
                        child: Text(e),
                        value: secenekler.indexOf(e),
                      ))
                  .toList()),
        ],
        leading: IconButton(
            onPressed: () {
              print("Menü açıldı");
            },
            icon: Icon(Icons.menu)),
        backgroundColor: Colors.orange.shade400,
        title: Text("Appbar örnek"),
      ),
    );
  }
}
