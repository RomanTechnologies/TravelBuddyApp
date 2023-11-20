import 'package:flutter/flutter.dart';
import '../models/destination.dart';

class DestinationCard extends StatelessWidget {
  const DestinationCard({Key? key, required this.destination}) : super(key: key);

  final Destination destination;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(destination.imageUrl, height: 150),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(destination.name, style: Theme.of(context).textTheme.headline6),
          ),
        ],
      ),
    );
  }
}
