import 'package:flutter/flutter.dart';

class DestinationPage extends StatelessWidget {
  const DestinationPage( {Key? key} ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appbar: AppBar(title: Text('Destination Details')),
      body: Center(child: Text('Explore destination details here.'))
    );
  }
}
