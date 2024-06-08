import 'package:flutter/material.dart';

class RowColumnStack extends StatelessWidget {
  const RowColumnStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Appbar"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Container(
                      child: const Text("Kutucuk 1"),
                      color: Colors.green,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            color: Colors.blue,
                            child: const Text("Kutucuk 2"),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Container(
                            color: Colors.red,
                            child: const Text("Kutucuk 3"),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.purple,
                child: Stack(
                  children: [
                    const Text("Kutucuk 4"),
                    Positioned(
                      top: 20,
                      right: 20,
                      child: Container(
                        height: 100,
                        color: Colors.orange,
                        child: const Text("Kutucuk 5"),
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      right: 20,
                      child: Container(
                        height: 100,
                        color: Colors.yellow,
                        child: const Text("Kutucuk 7"),
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      left: 20,
                      child: Container(
                        height: 100,
                        color: Colors.brown,
                        child: const Text("Kutucuk 6"),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
