import 'dart:developer';

import 'package:flutter/material.dart';

class AlertDialogOrnek extends StatefulWidget {
  const AlertDialogOrnek({super.key});

  @override
  State<AlertDialogOrnek> createState() => _AlertDialogOrnekState();
}

class _AlertDialogOrnekState extends State<AlertDialogOrnek> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AlertDialog Ornek"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      scrollable: true,
                      backgroundColor: Colors.yellow,
                      titlePadding: EdgeInsets.all(0),
                      contentTextStyle:
                          const TextStyle(color: Colors.red, fontSize: 20),
                      title: const Text("Çıkış yap?"),
                      icon: Icon(Icons.exit_to_app),
                      content: Column(
                        children: [
                          Text("Çıkış yapmak istediğinizden emin misiniz?"),
                        ],
                      ),
                      actions: [
                        TextButton(
                            onPressed: () {
                              log("Çıkış yapıldı");
                              Navigator.pop(context);
                            },
                            child: Text("Evet")),
                        TextButton(
                            onPressed: () {
                              log("Hayır'a basıldı");
                              Navigator.pop(context);
                            },
                            child: Text("Hayır")),
                      ],
                    );
                  });
            },
            child: Text("Çıkış Yap")),
      ),
    );
  }
}
