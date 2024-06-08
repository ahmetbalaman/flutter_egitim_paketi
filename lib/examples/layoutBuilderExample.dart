import 'package:flutter/material.dart';

class LayoutBuilderExample extends StatelessWidget {
  const LayoutBuilderExample({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 600) {
        return Scaffold(
          appBar: AppBar(),
          body: const Center(
            child: Text("Tablet Ekran"),
          ),
        );
      } else {
        return Scaffold(
          appBar: AppBar(),
          body: const Center(
            child: Text("Mobil Ekran"),
          ),
        );
      }
    });
  }
}
