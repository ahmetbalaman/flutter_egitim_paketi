import 'dart:developer';

import 'package:flutter/material.dart';

class ZikirMatik extends StatefulWidget {
  const ZikirMatik({super.key});

  @override
  State<ZikirMatik> createState() => _ZikirMatikState();
}

class _ZikirMatikState extends State<ZikirMatik> {
  int zikirSayisi = 0;
  String zikirMesaj = "";
  bool deger = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Zikir Matik"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Zikir Sayısı: $zikirSayisi"),
            Text(zikirMesaj),
            GestureDetector(
              onTap: () {
                log("Bana basıldı!");
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                    child: const Text("Zikir Arttır"),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        zikirSayisi = 0;
                      });
                    },
                    child: const Text("Zikir Sıfırla"),
                  ),
                  Switch(
                      value: deger,
                      onChanged: (degisenDeger) {
                        setState(() {
                          deger = degisenDeger;
                        });
                      }),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
