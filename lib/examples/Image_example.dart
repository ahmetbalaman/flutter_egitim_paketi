import 'package:flutter/material.dart';

class ImageExample extends StatelessWidget {
  const ImageExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Example'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Image Asset Örneği",
                style: TextStyle(fontSize: 36),
              ),
              Image.asset(
                "assets/ben.jpg",
                height: 300,
                width: 300,
                fit: BoxFit.cover,
                alignment: Alignment.topLeft,
                filterQuality: FilterQuality.high,
              ),
              Text(
                "Image Network Örneği",
                style: TextStyle(fontSize: 36),
              ),
              Image.network(
                "https://www.sanatgezgini.com/media/catalog/product/cache/1/image/17f82f742ffe127f42dca9de82fb58b1/1/_/1_21.jpeg",
                height: 300,
                width: 300,
                fit: BoxFit.cover,
                alignment: Alignment.topLeft,
                filterQuality: FilterQuality.high,
              ),
              Text(
                "Fade In Image Örneği",
                style: TextStyle(fontSize: 36),
              ),
              FadeInImage(
                  height: 300,
                  placeholder: AssetImage(
                    "assets/loading.gif",
                  ),
                  image: NetworkImage(
                      "https://www.sanatgezgini.com/media/catalog/product/cache/1/image/17f82f742ffe127f42dca9de82fb58b1/1/_/1_21.jpeg"))
            ],
          ),
        ),
      ),
    );
  }
}
