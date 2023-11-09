import 'package:flutter/material.dart';

class ImageScreen1 extends StatelessWidget {
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
              style: ElevatedButton.styleFrom(
                primary: Colors.blue, 
              ),
              child: Text(backToHome),
            ),
          ],
        ),
      ),
    );
  }
}
