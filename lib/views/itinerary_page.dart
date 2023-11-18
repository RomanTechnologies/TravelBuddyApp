import 'package:flutter/flutter.dart';

class ItineraryPage extends StatelessWidget {
  const ItineraryPage( {Key? key} ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appbar: AppBar(title: Text('Itinerary Planner')),
      body: Center(child: Text('Manage your itineraries here.')),
    );
  }
}
