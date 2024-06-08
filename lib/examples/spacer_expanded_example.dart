import 'package:flutter/material.dart';

class SpacerExpandedOrnek extends StatelessWidget {
  const SpacerExpandedOrnek({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Anasayfa"),
              Text("Diğer Sayfa"),
              Text("Diğer Sayfa"),
            ],
          ),
          const Spacer(),
          Expanded(
              flex: 2,
              child:
                  Container(color: Colors.orange, child: const Text("İçerik"))),
          const Spacer(),
          Expanded(
              flex: 1,
              child:
                  Container(color: Colors.blue, child: const Text("Alt Bar")))
        ],
      ),
    );
  }
}
