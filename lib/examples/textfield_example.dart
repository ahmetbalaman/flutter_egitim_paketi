import 'dart:developer';

import 'package:flutter/material.dart';

import '../components/snackbar_component.dart';

class TextFieldExample extends StatefulWidget {
  const TextFieldExample({super.key});

  @override
  State<TextFieldExample> createState() => _TextFieldExampleState();
}

class _TextFieldExampleState extends State<TextFieldExample> {
  late TextEditingController controlKullaniciAdi;
  late TextEditingController controlSifre;
  late TextEditingController controlAdres;

  bool isObscure = true;
  @override
  void initState() {
    log("Sayfa başladı");
    super.initState();

    controlKullaniciAdi = TextEditingController();
    controlSifre = TextEditingController();
    controlAdres = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    log("Sayfa kapandı");
    controlKullaniciAdi.dispose();
    controlSifre.dispose();
    controlAdres.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Text Field Örnek"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            kullaniciAdiTextBox(),
            sifreTextBox(),
            adresTextBox(),
            girisYapButon(context)
          ],
        ),
      ),
    );
  }

  ElevatedButton girisYapButon(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          if (controlKullaniciAdi.text == "admin" &&
              controlSifre.text == "123") {
            showSnackBar(context,
                content: "Giriş Başarılı", renk: Colors.green);
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => WelcomePage()));
          } else {
            showSnackBar(context, content: "Giriş başarısız", renk: Colors.red);
          }
        },
        child: Text("Giriş yap"));
  }

  SizedBox adresTextBox() {
    return SizedBox(
      width: 300,
      child: TextField(
        textInputAction: TextInputAction.done,
        keyboardType: TextInputType.multiline,
        minLines: 2,
        maxLines: 4,
        controller: controlAdres,
        decoration: const InputDecoration(
          filled: true,
          fillColor: Colors.orange,
          suffixIcon: Icon(Icons.location_city),
          iconColor: Colors.red,
          border: UnderlineInputBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),

          hintText: "Adres",
          //labelText: "Kullanıcı adı",
          labelStyle: TextStyle(
              color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  SizedBox sifreTextBox() {
    return SizedBox(
      width: 300,
      child: TextField(
        textInputAction: TextInputAction.next,
        obscureText: isObscure,
        controller: controlSifre,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.orange,
          suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  isObscure = !isObscure;
                });
              },
              icon: Icon(!isObscure ? Icons.visibility : Icons.visibility_off)),
          iconColor: Colors.red,
          border: UnderlineInputBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),

          hintText: "Şifre",
          //labelText: "Kullanıcı adı",
          labelStyle: TextStyle(
              color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  SizedBox kullaniciAdiTextBox() => SizedBox(
        width: 300,
        child: TextField(
          textInputAction: TextInputAction.next,
          autocorrect: false,
          keyboardType: TextInputType.name,
          controller: controlKullaniciAdi,
          maxLength: 12,
          decoration: const InputDecoration(
            filled: true,
            fillColor: Colors.orange,
            suffixIcon: Icon(Icons.person),
            iconColor: Colors.red,
            border: UnderlineInputBorder(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(20))),

            hintText: "Kullanıcı adı",
            //labelText: "Kullanıcı adı",
            labelStyle: TextStyle(
                color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      );
}

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hoşgeldiniz"),
      ),
      body: Center(
        child: Text("Hoşgeldiniz"),
      ),
    );
  }
}
