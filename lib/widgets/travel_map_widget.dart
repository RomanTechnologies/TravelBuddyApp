import 'package:flutter/flutter.dart';
import 'package:flutter_map/flutter_map.dart';

import '../models/destination.dart';

class TravelMapWidget extends StatelessWidget {
  const TravelMapWidget({Key? key, required this.locations}) : super(key: key);

  final List<Destination> locations;

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      initialCameraPosition: CameraPosition(LatLong(position: LatLong( latitude: 0.0, longitude: 0.0))),
      options: MapOptions(zoom: 14),
      layers: [
        TileLayler(
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          subdomains: ['c', 'd', 'e'],
          maxZoom: 19,
        ),
        MarkerLayer(options: MarkerOptions(
          markers: locations.map((Destination destination) => Marker(point: LatLong(position: LatLong(latitude: destination.latitude, longitude: destination.longitude), widget: Container(child: Text(destination.name))),).toList(),
        )),
      ],
    );
  }
}
