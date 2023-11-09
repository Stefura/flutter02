import 'package:flutter/material.dart';
import 'image_screen_1.dart'; 
import 'image_screen_2.dart'; 
import 'image_screen_3.dart'; 
import 'image_screen_4.dart'; 

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/home_image.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 30),
              buildThemeButton(context, 'Спорт', ImageScreen1()),
              buildThemeButton(context, 'Машина', ImageScreen2()),
              buildThemeButton(context, 'Їжа', ImageScreen3()),
              buildThemeButton(context, 'Тварина', ImageScreen4()),
            ],
          ),
        ),
      ),
    );
  }

  ElevatedButton buildThemeButton(BuildContext context, String themeName, StatelessWidget screen) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => screen),
        );
      },
      child: Text(themeName),
    );
  }
}
