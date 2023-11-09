import 'package:flutter/material.dart';

class ImageScreen4 extends StatelessWidget {
  static const String title = 'Тема 4';
  static const String imageText = 'Зображення теми 4';
  static const String backToHome = 'На головну';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(imageText),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(backToHome),
            ),
          ],
        ),
      ),
    );
  }
}
