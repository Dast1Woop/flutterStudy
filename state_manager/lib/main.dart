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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
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
  bool _active = false;
  void _handleTap() {

    //必须在 setState 方法内改变状态，才会自动触发 UI 更新
   setState(() {
     _active = !_active;
   });
    print(_active);
  }

 Widget build(BuildContext context){
    return GestureDetector(onTap: _handleTap,
    child: Container(
      child: Center(
          child: Text(
            _active ? "Active": "Not Active",
            style: TextStyle(fontSize: 32, color: Colors.cyanAccent),),
        ),
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        color: _active ? Colors.lightGreen[700] : Colors.red
      ),
    ),
    );

 }
}

