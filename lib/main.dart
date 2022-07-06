import 'package:flutter/material.dart';

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
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: "What's up mountain"),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final listItems = [
      'Item 1',
      'Item 2',
      'Item 3',
      'Item 1',
      'Item 2',
      'Item 3',
      'Item 1',
      'Item 2',
      'Item 3',
      'Item 1',
      'Item 2',
      'Item 3',
      'Item 1',
      'Item 2',
      'Item 3',
      'Item 1',
      'Item 2',
      'Item 3',
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              child: const TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black12,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 2.0),
                    ),
                    labelText: '山の名前を入力',
                    labelStyle: TextStyle(color: Colors.black)),
              ),
            ),
            Container(
              height: 600,
              padding: EdgeInsets.all(4),
              child: ListView.builder(
                itemCount: listItems.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: Container(
                      height: 40,
                      width: double.infinity,
                      child: Text(listItems[index]),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
