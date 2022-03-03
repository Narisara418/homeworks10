import 'package:flutter/material.dart';

void main() {
  const app = MyApp();
  runApp(app);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // callback method
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: testPage(),
    );
  }
}

class testPage extends StatefulWidget {
  const testPage({Key? key}) : super(key: key);

  @override
  _testPageState createState() => _testPageState();
}

class _testPageState extends State<testPage> {
  var _num1 = 6;
  var _num = 0;
  var _text = '';
  var c = 0;
  var arr = new List.filled(6, null, growable: false);

  @override
  Widget build(BuildContext context) {
    //String TextToShow = _show ? 'Hello':'';

    return Scaffold(
      appBar: AppBar(title: Text('TEST PAGE')),
      body: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _num > 5 ? Text('hello'): SizedBox.shrink(),
            /*Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text('hello'),
              _num > 5 ? Text('hello'): SizedBox.shrink(),
              /*Text(
                _show ? 'Hello':'',
                ),*/
              ),*/
            /*if(_num > 5)
              Text('hello'),*/
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  for (var i = 0; i < 6; i++)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 20.0,
                        height: 20.0,
                        margin: EdgeInsets.all(2.0),
                        decoration: BoxDecoration(
                          border: (i < _num)?
                          Border.all(color: Colors.deepOrange, width: 1.0)
                          : Border.all(color: Colors.blue, width: 1.0),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _num++;
                      c++;
                    });
                  },
                  child: Text('test')),
            ),
          ],
        ),
      ),
    );
  }
}

