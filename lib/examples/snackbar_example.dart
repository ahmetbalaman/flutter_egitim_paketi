import 'package:flutter/material.dart';

class SnackBarOrnek extends StatelessWidget {
  const SnackBarOrnek({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Snackbar Örneği"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              backgroundColor: Colors.green,
              closeIconColor: Colors.red,
              showCloseIcon: true,
              action: SnackBarAction(
                  textColor: Colors.red,
                  disabledTextColor: Colors.black,
                  label: "Evet",
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ExitPage()));
                  }),
              content: const Text("Çıkış yapmak istediğinizden emin misiniz?"),
              duration: const Duration(seconds: 10),
            ));
          },
          child: Text("Çıkış yap"),
        ),
      ),
    );
  }
}

class ExitPage extends StatelessWidget {
  const ExitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Güle Güle"),
      ),
      body: Center(
        child: Text("Çıkış yaptınız"),
      ),
    );
  }
}
