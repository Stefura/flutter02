import 'package:flutter/material.dart';

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
        title: Text("Переглядач картинок"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildThemeButton(context, 'Спорт', 'assets/theme1.jpg'),
            SizedBox(height: 10), // Регулює відстань між кнопками
            buildThemeButton(context, 'Машина', 'assets/theme2.jpg'),
            SizedBox(height: 10),
            buildThemeButton(context, 'Їжа', 'assets/theme3.jpg'),
            SizedBox(height: 10),
            buildThemeButton(context, 'Тварини', 'assets/theme4.png'),
          ],
        ),
      ),
    );
  }

  ElevatedButton buildThemeButton(BuildContext context, String themeName, String imagePath) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ThemeScreen(themeName, imagePath)),
        );
      },
      style: ElevatedButton.styleFrom(
        primary: Colors.blue, // Колір фону кнопки
        padding: EdgeInsets.all(20), // Відступи внутрішнього вмісту кнопки
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)), // Закруглені кути кнопки
        fixedSize: Size(200, 50), // Фіксовані розміри кнопки
      ),
      child: Text(
        themeName,
        style: TextStyle(fontSize: 16), // Розмір тексту кнопки
      ),
    );
  }
}

class ThemeScreen extends StatelessWidget {
  final String themeName;
  final String imagePath;

  ThemeScreen(this.themeName, this.imagePath);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(themeName),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imagePath),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blue, // Колір фону кнопки
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10), // Відступи внутрішнього вмісту кнопки
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)), // Закруглені кути кнопки
              ),
              child: Text(
                "На головну",
                style: TextStyle(fontSize: 16), // Розмір тексту кнопки
              ),
            ),
          ],
        ),
      ),
    );
  }
}
