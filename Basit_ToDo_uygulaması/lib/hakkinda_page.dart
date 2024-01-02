import 'package:flutter/material.dart';
import 'todo_page.dart';
class Hakkinda extends StatefulWidget {
  const Hakkinda({super.key});

  @override
  State<Hakkinda> createState() => _HakkindaState();
}

class _HakkindaState extends State<Hakkinda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Hakkında"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 75),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: TextStyle(
                  fontSize: 30,
                  letterSpacing: 2,
                  wordSpacing: 2,
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text: "Bu Uygulama Flutter ile Yapılmıştır",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 75),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: TextStyle(
                  fontSize: 30,
                  letterSpacing: 2,
                  wordSpacing: 2,
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text: "Uygulamanın Amacı Liste Oluşturmaktır",
                  ),
                ],
              ),
            ),
            SizedBox(height: 75),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: TextStyle(
                  fontSize: 30,
                  letterSpacing: 2,
                  wordSpacing: 2,
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text: "Liste Oluşturmak için Tıklayınız",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 75),
            FilledButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ToDoPage()));
              },
              child: Text("Yapılacaklar Listesi"),
            ),
          ],
        ),
      ),
    );
  }
}
