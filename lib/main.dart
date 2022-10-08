import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _inputText = 'testodesuuu';

  @override
  Widget build(BuildContext context) {
    final windowWidth = MediaQuery.of(context).size.width;
    var margin = 100.0;
    var labelWidth = 100.0;
    var inputTextWidth = 500.0;
    if (windowWidth > labelWidth + inputTextWidth + margin) {
      inputTextWidth = windowWidth - labelWidth - margin;
    } else if (windowWidth > labelWidth + inputTextWidth) {
        margin = windowWidth - labelWidth - inputTextWidth;
    } else {
        labelWidth = windowWidth * 1.0 / 6.0;
        inputTextWidth = windowWidth * 5.0 / 6.0;
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('i_hate_ui_fonts_flutter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: labelWidth,
                  child: Text(
                    'Input',
                  ),
                ),
                SizedBox(
                  width: inputTextWidth,
                  child: TextField(
                    style: TextStyle(
                      fontFamily: 'Yu Gothic',
                      fontSize: 48,
                    ),
                    onChanged: (text) {
                      setState(() {
                          _inputText = text;
                      });
                    },
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: labelWidth,
                  child: Text(
                    'Yu Gohitc UI'
                  ),
                ),
                SizedBox(
                  width: inputTextWidth,
                  child: Text(
                    _inputText,
                    style: TextStyle(
                      fontFamily: 'Yu Gothic UI',
                      fontSize: 48,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: labelWidth,
                  child: Text(
                    'Meiryo UI',
                  ),
                ),
                SizedBox(
                  width: inputTextWidth,
                  child: Text(
                    _inputText,
                    style: TextStyle(
                      fontFamily: 'Meiryo UI',
                      fontSize: 48,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: labelWidth,
                  child: Text(
                    'MS UI Gothic',
                  ),
                ),
                SizedBox(
                  width: inputTextWidth,
                  child: Text(
                    _inputText,
                    style: TextStyle(
                      fontFamily: 'MS UI Gothic',
                      fontSize: 48,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
