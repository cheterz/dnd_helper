import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AuthScreenState();
  }
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white38,
        body: Container(
            padding: EdgeInsets.fromLTRB(100, 200, 100, 200),
            child: Scaffold(
                backgroundColor: Colors.amberAccent,
                body: Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Center(
                        child: Column(
                          children: <Widget>[
                            Center(
                              child: Text(
                                "DnD\n Helper",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 60,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                            TextField(
                              decoration: InputDecoration(labelText: "Login"),
                            ),
                            TextField(
                              decoration:
                                  InputDecoration(labelText: "Password"),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: ElevatedButton(
                                onPressed: null,
                                child: new RaisedButton(
                                  color: Colors.brown,
                                  onPressed: null,
                                  child: Text(
                                    "Authorization",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ))),
      ),
    );
  }
}
