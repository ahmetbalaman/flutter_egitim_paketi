import 'dart:developer';

import 'package:flutter/material.dart';

class ShowModalBottomSheetExample extends StatelessWidget {
  const ShowModalBottomSheetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SMBS Example"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                  isDismissible: false,
                  enableDrag: false,
                  backgroundColor: Colors.yellow,
                  context: context,
                  builder: (context) {
                    return SizedBox(
                        width: double.maxFinite,
                        height: 200,
                        child: Row(
                          children: [
                            Expanded(
                              child: IconButton(
                                  onPressed: () {
                                    log("Kameraya basıldı kamera açılıyor...");
                                    Navigator.pop(context);
                                  },
                                  icon: Icon(
                                    Icons.camera_alt,
                                    size: 30,
                                  )),
                            ),
                            Expanded(
                              child: IconButton(
                                  onPressed: () {
                                    log("Galeriye basıldı galeri açılıyor...");
                                    Navigator.pop(context);
                                  },
                                  icon: Icon(
                                    Icons.image,
                                    size: 30,
                                  )),
                            ),
                          ],
                        ));
                  });
            },
            child: Text("Fotoğraf Yükle")),
      ),
    );
  }
}
