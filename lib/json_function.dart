import 'package:flutter/material.dart';
import 'package:utils_functions/utils.dart';

class JsonFunction extends StatefulWidget {
  const JsonFunction({Key? key}) : super(key: key);

  @override
  State<JsonFunction> createState() => _JsonFunctionState();
}

class _JsonFunctionState extends State<JsonFunction> {
  Map jsonData = {};
  @override
  void initState() {
    super.initState();
    Utils.readJsonData(path: 'lib/myJson.json').then((value) {
      print(value);
      setState(() {
        jsonData = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Json Function'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ListTile(
            title: Text(jsonData['name']),
            subtitle: Text(jsonData['email']),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(jsonData['image']),
            ),
          )
        ],
      ),
    );
  }
}
