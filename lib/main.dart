import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Login'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'images/2.png',
                fit: BoxFit.cover,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Enter your email',
                ),
              ),
              const SizedBox(height: 30),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Enter Password',
                ),
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                child: RaisedButton(
                  color: Colors.blue,
                  padding: EdgeInsets.all(15.0),
                  onPressed: () {},
                  child: const Text('Login',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          backgroundColor: Colors.blue)),
                ),
              ),
//
//              const SizedBox(height: 10),
//              Text("Don't have an account? Sign Up",
//              style: TextStyle(height:5),
//              ),
              const SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                child: RaisedButton(
                  color: Colors.blue,
                  padding: EdgeInsets.all(15.0),
                  onPressed: () {},
                  child: const Text('Sign Up',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          backgroundColor: Colors.blue)),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
