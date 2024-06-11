import 'package:flutter/material.dart';

class SingleChildScrollViewExample extends StatelessWidget {
  const SingleChildScrollViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("SingleChildScrollView Example"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 400,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: Image.network(
                          fit: BoxFit.fitWidth,
                          "https://static9.depositphotos.com/1662755/1149/i/450/depositphotos_11494814-stock-photo-hawaiian-palm-tree-sunset.jpg"),
                    ),
                    Expanded(
                      child: Image.network(
                          fit: BoxFit.fill,
                          "https://static9.depositphotos.com/1662755/1149/i/450/depositphotos_11494814-stock-photo-hawaiian-palm-tree-sunset.jpg"),
                    ),
                    Expanded(
                      child: Image.network(
                          "https://static9.depositphotos.com/1662755/1149/i/450/depositphotos_11494814-stock-photo-hawaiian-palm-tree-sunset.jpg"),
                    ),
                  ],
                ),
              ),
              Image.network(
                  "https://st4.depositphotos.com/12985790/20673/i/600/depositphotos_206738636-stock-photo-empty-landscape-sand-dune-desert.jpg"),
              Image.network(
                  "https://st4.depositphotos.com/12985790/20673/i/600/depositphotos_206738636-stock-photo-empty-landscape-sand-dune-desert.jpg"),
              Image.network(
                  "https://st4.depositphotos.com/12985790/20673/i/600/depositphotos_206738636-stock-photo-empty-landscape-sand-dune-desert.jpg"),
            ],
          ),
        ));
  }
}
