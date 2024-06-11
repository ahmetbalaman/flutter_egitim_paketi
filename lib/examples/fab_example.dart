import 'package:flutter/material.dart';

class FloatingActionButtonOrnek extends StatelessWidget {
  const FloatingActionButtonOrnek({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          mini: false,
          child: Icon(
            Icons.launch,
            color: Colors.yellow,
          ),
          backgroundColor: Colors.red,
          elevation: 8,
          onPressed: () {
            print("Bu tuşa basıldı");
          }),
    );
  }
}
