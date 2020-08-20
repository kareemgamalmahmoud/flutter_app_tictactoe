import 'package:flutter/material.dart';
import 'package:flutterapptictactoe/homePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  bool darkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkMode ? Colors.grey[850] : Colors.grey[300],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 200,
              height: 200,
              child: Icon(Icons.android , size: 80, color: darkMode ? Colors.grey[300] : Colors.grey[850],),
              decoration: BoxDecoration(
                  color: darkMode ? Colors.grey[850] : Colors.grey[300],
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  boxShadow: [
                    BoxShadow(
                      color: darkMode ? Colors.grey[900] : Colors.grey[500],
                      offset: Offset(5.0 , 5.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0,
                    ),
                    BoxShadow(
                      color: darkMode ? Colors.grey[800] : Colors.white,
                      offset: Offset(-5.0 , -5.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0,
                    )
                  ]
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    onPressed: (){
                      setState(() {
                        darkMode = true;
                      });
                    },
                    child: Text(
                      'Dark',
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.black,

                  ),
                  FlatButton(
                    onPressed: (){
                      setState(() {
                        darkMode = false;
                      });
                    },
                    child: Text(
                      'Light',
                      style: TextStyle(color: Colors.black),
                    ),
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 100),
                child: GestureDetector(
                  onTap: ()
                  {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => homepage())
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40, right: 40 , bottom: 60),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(30),
                          child: Center(
                            child: Text(
                              'Play Game !',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}

