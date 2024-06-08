import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const ZikirMatik());
  }
}

class ZikirMatik extends StatefulWidget {
  const ZikirMatik({super.key});

  @override
  State<ZikirMatik> createState() => _ZikirMatikState();
}

class _ZikirMatikState extends State<ZikirMatik> {
  int zikirSayisi = 1;
  String zikirMesaj = "";
  bool basildi = false;
  String title = "Zikir Matik";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: InkWell(
            onTap: () {
              basildi = !basildi;

              setState(() {
                if (basildi) {
                  title = "Yanlış Yere bastın :)";
                } else {
                  title = "Zikir Matik";
                }
              });
            },
            child: Text(title)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Zikir Sayısı : $zikirSayisi"),
          Text(zikirMesaj),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      zikirSayisi++;
                    });
                    if (zikirSayisi % 10 == 0) {
                      zikirMesaj = "$zikirSayisi Kere Maşallah";
                    } else {
                      zikirMesaj = "";
                    }
                  },
                  child: Text("Zikir Arttır")),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      zikirSayisi = 1;
                    });
                  },
                  child: Text("Zikir Sıfırla"))
            ],
          )
        ],
      ),
    );
  }
}
