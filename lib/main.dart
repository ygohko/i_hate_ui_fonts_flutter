/*
 * Copyright (c) 2022 Yasuaki Gohko
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
 * THE ABOVE LISTED COPYRIGHT HOLDER(S) BE LIABLE FOR ANY CLAIM, DAMAGES OR
 * OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
 * ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 */

import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'i_hate_ui_fonts_flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _inputText = 'testodesuuu';

  @override
  Widget build(BuildContext context) {
    if (!Platform.isWindows) {
      return _buildForOtherPlatforms(context);
    }

    return _buildForWindows(context);
  }

  Widget _buildForWindows(BuildContext context) {
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
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: labelWidth,
                  child: Text(
                    'Yu Gothic',
                  ),
                ),
                SizedBox(
                  width: inputTextWidth,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter some texts here'
                    ),
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

  Widget _buildForOtherPlatforms(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('i_hate_ui_fonts_flutter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Congraturations!',
              style: Theme.of(context).textTheme.headline4,
          ),
            const Text('You would not suffer from ugly UI fonts, so this app is not needed for you!'),
          ],
        ),
      ),
    );
  }
}
