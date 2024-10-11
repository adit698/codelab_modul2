import 'package:flutter/material.dart';
import 'screens/user_screen.dart';
import 'screens/webview_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: UserScreen(),
      routes: {
        '/webview': (context) => WebViewScreen(url: 'https://flutter.dev'),
      },
    );
  }
}
