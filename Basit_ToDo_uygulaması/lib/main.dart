import 'package:flutter/material.dart';
import 'package:untitled/hakkinda_page.dart';
import 'todo_page.dart';

void main() {
  runApp(const AnaSayfa());
}

class AnaSayfa extends StatelessWidget {
  const AnaSayfa({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurpleAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: "Ana Sayfa"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 45),
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
                    text: "Hoşgeldiniz",
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
                  fontSize: 25,
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
            SizedBox(height: 15),


            FilledButton(onPressed:(){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ToDoPage()));
            }, child: Text("Yapılacaklar Listesi")),
            SizedBox(height: 75),
            FilledButton(onPressed:(){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Hakkinda()));
            }, child: Text("Hakkında"))
          ],

        ),
      ),

    );
  }
  }


