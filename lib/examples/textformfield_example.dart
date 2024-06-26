import 'package:flutter/material.dart';
import 'package:flutter_egitim_paketi/components/snackbar_component.dart';

class TextFormFieldExample extends StatefulWidget {
  const TextFormFieldExample({super.key});

  @override
  State<TextFormFieldExample> createState() => _TextFormFieldExampleState();
}

class _TextFormFieldExampleState extends State<TextFormFieldExample> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("TextFormField Örnek"),
        ),
        body: Form(
          key: formKey,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if (!RegExp(
                              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(value!)) {
                        return "Lütfen doğru formatta email giriniz";
                      }
                    },
                    decoration: InputDecoration(
                      hintText: "Mail",
                    ),
                  ),
                ),
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      bool isValid = RegExp(
                              r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
                          .hasMatch(value!);

                      if (value.length < 8) {
                        return "Lütfen en az 8 karakter giriniz";
                      }

                      if (!isValid) {
                        return "Şifreniz en az 1 büyük harf, 1 küçük harf, 1 rakam ve 1 özel karakter içermelidir.";
                      }
                    },
                    decoration: InputDecoration(
                      errorMaxLines: 2,
                      hintText: "Şifre",
                    ),
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        showSnackBar(context,
                            content: "Giriş başarılı", renk: Colors.green);
                      } else {
                        showSnackBar(context,
                            content: "Giriş Başarısız", renk: Colors.red);
                      }
                    },
                    child: Text("Giriş yap"))
              ],
            ),
          ),
        ));
  }
}
