import 'package:flutter/material.dart';
import 'package:flutter_svg_potd/flutter_svg.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Flutter SVG'),
            centerTitle: true,
          ),
          body: const FlutterSvgPage()),
    );
  }
}
