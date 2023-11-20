import 'package:flutter/test.dart';
import '../lib/viewmodels/itinerary_viewModel.dart';
import '../lib/models/itinerary.dart';
import '../lib/models/destination.dart';

void main() {
  group('Itinerary ViewModel Unit Tests', () {
    final itineraryVM = ItineraryViewModel();
    test('Initialization Test for ItineraryViewModel',() {
      expect(itineraryVM, isNot(null));
      expect(itineraryVM.itineraries, isAList);
      expect(itineraryVM.itineraries.length, isGreaterThan(0));
  });
 });
}
