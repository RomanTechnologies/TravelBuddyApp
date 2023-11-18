import 'package:flutter/flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage( {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appbar: AppBar(title: Text('Travel Buddy')),
      body: Center(child: Text('Welcome to Travel Buddy!')),
    );
  }
}
