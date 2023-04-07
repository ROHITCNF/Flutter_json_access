import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'example_data.dart';

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
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    testJson(context);
    return Scaffold();
  }

  void testJson(BuildContext context) async {
    final file = await rootBundle.loadString('json/example.json');

    final myJson = jsonDecode(file);
    Person person = Person.fromJson(myJson);

    print(myJson);
    print(person.name); // John Doe
    print(person.age); // 30
    print(person.isMarried); // true
    print(person.address.street); // 123 Main St
    print(person.phoneNumbers[0].number); // 555-1234
  }
}
