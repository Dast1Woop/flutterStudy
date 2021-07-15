// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//vscode只提示/后面，android studio 🐂🍺
import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

//MARK: 格式化代码快捷键：全选，然后依次按下 cmd+k, cmd+f
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body: Center(
          // child: Text('Hello World11'),
          child: Text(wordPair.asPascalCase),
        ),
      ),
    );
  }
}
