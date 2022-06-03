import 'package:flutter/material.dart';
import 'package:utils_functions/utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Camel Case Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Text('Example',
                textAlign: TextAlign.center, style: TextStyle(fontSize: 20)),
            const Text('hello welcome to flutter wings',
                textAlign: TextAlign.center, style: TextStyle(fontSize: 20)),
            const SizedBox(height: 50),
            const Text('Result',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, color: Colors.blue)),
            Text(' ${Utils.capitalize("hello welcome to flutter wings")}',
                // textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 20, color: Colors.blue)),
          ]),
        ));
  }
}
