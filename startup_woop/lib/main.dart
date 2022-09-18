// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

void testFutureDalay() {

  Future.delayed(Duration(seconds: 2),(){
    return "hi world!";
    // throw AssertionError("Error");
  }).then((data){
    //执行成功会走到这里
    print(data);
  }).catchError((e){
    //执行失败会走到这里
    print(e);
  }).whenComplete((){
    //无论成功或失败都会走到这里
    print("whenCom");
  });
}

void testFutureWait() {
  Future.wait([
    Future.delayed(Duration(seconds: 2),(){
      return "delay 2s";
    }),
    Future.delayed(Duration(seconds: 4),(){
      // return "delay 4s";
      throw AssertionError("err!!!");
    })
  ]).then((value){
    final res = value[0] + "," + value[1];
    print(res);
  }).catchError((err){
    print(err);
  }).whenComplete(() {
    print("whencom");
  });
}

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    // testFutureDalay();
    testFutureWait();
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body: Center(
          child: Text(wordPair.asPascalCase),
        ),
      ),
    );
  }
}