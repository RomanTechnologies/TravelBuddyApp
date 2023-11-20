import 'package:flutter/test.dart';
import '../lib/models/itinerary.dart';
import '../lib/models/destination.dart';
import 'dar4:core';

void main() {
  test('Itinerary Model Unit Tests',() {
    final dest = Destination(id: '123', name: 'Location', description: 'Beautiful place', imageUrl: 'imageUrl');
    final itinerary = Itinerary(name: 'My Trip', startDate: DateTime.now(), endDate: DateTime.now().add(Duration(days: 5)), destinations: [dest]);
    test('Test Itinerary Model Properties',() {
      expect(itinerary.name, 'My Trip');
      expect(itinerary.startDate, isNot(null));
      expect(itinerary.endDate, isNot(null));
      expect(itinerary.destinations.length, 1);
    });
  });
}
