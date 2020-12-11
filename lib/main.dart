import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:cards/pages/belotte.dart';

void main() => SystemChrome.setEnabledSystemUIOverlays([])
    .then((_) => SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
    .then((_) => runApp(MyApp())));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Card games',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Card games'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            GestureDetector(
              child: Card(
                color: Colors.black,
                child: Container(
                  height: 50.0,
                  child: Center(
                    child: Text("Belotte", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold ,color: Colors.white),),
                  ),
                ),
              ),
              onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => Belotte())),
            )
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.arrow_left),
            Text(
              "Choisis ton jeu dans le menu latéral",
            ),
          ],
        ),
      ),
    );
  }
}
