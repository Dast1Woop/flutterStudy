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
      home:  ParentWidget(),
    );
  }
}


class ParentWidget extends StatefulWidget {

  @override
  State<ParentWidget> createState() => _ParentWidgetState();
}

class _ParentWidgetState extends State<ParentWidget> {
  bool _active = false;

  void _tapHandle(bool newValue) {
    setState(() {
      _active = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return TapboxB(active: _active,onTapHandle: _tapHandle, );
  }
}

class TapboxB extends StatelessWidget {
  TapboxB({Key?key,  this.active: false, required this.onTapHandle}) : super(key:key);

  final  bool active;
  final ValueChanged<bool> onTapHandle;

  void _tapEventHandle() {
    onTapHandle(!active);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(onTap: _tapEventHandle,
    child: Container(
      child:
          Center(
            child:  Text(active ? "Active" : "Inactive", style: TextStyle(fontSize: 32, color: Colors.red),)
    ),
    )
    );
  }
}
