import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Placeholder());
  }
}

/*
class ScrollViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ScrollView Örneği'),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 200,
                color: Colors.blue,
                child: Center(
                  child: Text(
                    'Üstte Sabit Kalan Widget',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 1000,
                color: Colors.white,
                child: Center(
                  child: Text(
                    'Burası Scrollable Alan',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 200,
                color: Colors.green,
                child: Center(
                  child: Text(
                    'Altta Sabit Kalan Widget',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
*/
/*
class FadeInImageExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('FadeInImage Örneği'),
        ),
        body: Center(
          child: FadeInImage.assetNetwork(
            placeholder: 'assets/loading.gif',
            image: 'https://picsum.photos/200/300',
            width: 200,
            height: 300,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
*/
/*


class ImageExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Image Örnekleri'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Image.network Örneği',
                style: TextStyle(fontSize: 20),
              ),
              Image.network(
                'https://picsum.photos/200/300', // Rastgele bir resim URL'si
                width: 200,
                height: 300,
              ),
              SizedBox(height: 20),
              Text(
                'Image.asset Örneği',
                style: TextStyle(fontSize: 20),
              ),
              Image.asset(
                'assets/ben.jpg',
                width: 200,
                height: 200,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
*/

/*
class SliderExample extends StatefulWidget {
  @override
  _SliderExampleState createState() => _SliderExampleState();
}

class _SliderExampleState extends State<SliderExample> {
  double _volume = 50;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ses Ayarı'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.volume_up,
                size: 80,
                color: Colors.blue,
              ),
              SizedBox(height: 20),
              Text(
                'Ses Seviyesi: $_volume',
                style: TextStyle(fontSize: 20),
              ),
              Slider(
                value: _volume,
                min: 0,
                max: 100,
                divisions: 10,
                label: _volume.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    _volume = value;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

*/


/*
class RadioButtonExample extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<RadioButtonExample> {
  String? _selectedOption;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('RadioButton Örneği'),
        ),
        body: ListView(
          children: [
            RadioListTile<String>(
              title: Text('A seçeneği'),
              value: 'A',
              groupValue: _selectedOption,
              onChanged: (String? value) {
                setState(() {
                  _selectedOption = value;
                });
              },
            ),
            RadioListTile<String>(
              title: Text('B seçeneği'),
              value: 'B',
              groupValue: _selectedOption,
              onChanged: (String? value) {
                setState(() {
                  _selectedOption = value;
                });
              },
            ),
            RadioListTile<String>(
              title: Text('C seçeneği'),
              value: 'C',
              groupValue: _selectedOption,
              onChanged: (String? value) {
                setState(() {
                  _selectedOption = value;
                });
              },
            ),
            RadioListTile<String>(
              title: Text('D seçeneği'),
              value: 'D',
              groupValue: _selectedOption,
              onChanged: (String? value) {
                setState(() {
                  _selectedOption = value;
                });
              },
            ),
            ElevatedButton(
              onPressed: () {
                if (_selectedOption != null) {
                  print('Seçilen şık: $_selectedOption');
                } else {
                  print('Lütfen bir şık seçiniz!');
                }
              },
              child: Text('Cevabı Gönder'),
            ),
          ],
        ),
      ),
    );
  }
}
*/

/*
class HomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Üniversite Uygulaması'),
        ),
        body: Center(
          child: Text('Ana ekran içeriği burada'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Günlük yemeği gösterme işlemini burada gerçekleştirin
            // Örneğin, bir dialog göstererek günlük yemeği bilgisini kullanıcıya sunabilirsiniz
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('Bugünün Yemeği'),
                  content: Text(
                      'Bugün menüde: Mercimek Çorbası, Izgara Tavuk, Pilav'),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('Kapat'),
                    ),
                  ],
                );
              },
            );
          },
          tooltip: 'Günlük Yemeği Göster',
          child: Icon(Icons.restaurant_menu),
        ),
      ),
    );
  }
}


*/

/*
class HomeApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<HomeApp> {
  List<String> _selectedIngredients = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Çoklu seçim örneği'),
        ),
        body: ListView(
          children: [
            for (var ingredient in ['Limon', 'Tuz', 'Biber', 'Sarımsak'])
              CheckboxListTile(
                title: Text(ingredient),
                value: _selectedIngredients.contains(ingredient),
                onChanged: (bool? value) {
                  setState(() {
                    if (value != null && value) {
                      _selectedIngredients.add(ingredient);
                    } else {
                      _selectedIngredients.remove(ingredient);
                    }
                  });
                },
              ),
            ElevatedButton(
              onPressed: () {
                print('Seçilen malzemeler: $_selectedIngredients');
              },
              child: Text('Seçilenleri Göster'),
            ),
          ],
        ),
      ),
    );
  }
}


/*
class FetchDataButton extends StatefulWidget {
  @override
  _FetchDataButtonState createState() => _FetchDataButtonState();
}

class _FetchDataButtonState extends State<FetchDataButton> {
  String _data = 'Henüz veri yok';
  bool _isLoading = false;

  Future<void> fetchData() async {
    setState(() {
      _isLoading = true;
    });

    // 3 saniyelik gecikme
    await Future.delayed(Duration(seconds: 3));

    setState(() {
      _isLoading = false;
      _data = 'Veri başarıyla getirildi!';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _isLoading ? CircularProgressIndicator() : Text(_data),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: _isLoading ? null : fetchData,
            child: Text('Veriyi Getir'),
          ),
        ],
      ),
    );
  }
}
*/*/