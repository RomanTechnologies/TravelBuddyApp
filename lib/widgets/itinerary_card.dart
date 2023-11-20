import 'package:flutter/flutter.dart';
import '../models/itinerary.dart';

// Custom widget for displaying itinerary details
class ItineraryCard extends StatelessWidget {
  const ItineraryCard({Key? (key, required this.itinerary}) : super(key: key);

  final Itinerary itiperary;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(itinerary.name, style: Theme.of(context).textTheme.headline6),
          Text('Start Date: ' + itinerary.startDate.toString(), style: Theme.of(context).textTheme.body1),
          Text('End Date: ' + itinerary.endDate.toString(), style: Theme.of(context).textTheme.body1),
        ],
      ),
    );
  }
}
