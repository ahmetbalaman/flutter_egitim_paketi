import 'package:flutter/material.dart';

class SliderOrnek extends StatefulWidget {
  const SliderOrnek({super.key});

  @override
  State<SliderOrnek> createState() => _SliderOrnekState();
}

class _SliderOrnekState extends State<SliderOrnek> {
  double sliderDeger = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Slider ornek")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.voice_chat,
              color: Colors.blue,
              size: 70,
            ),
            Slider(
                min: 0,
                max: 10,
                value: sliderDeger,
                onChanged: (value) {
                  setState(() {
                    sliderDeger = value;
                  });
                }),
            Text(sliderDeger.toInt().toString())
          ],
        ),
      ),
    );
  }
}
