import 'package:flutter/test.dart';
import '../lib/viewmodels/home_viewModel.dart';
import '../lib/models/itinerary.dart';

void main() {
  group('Home ViewModel Unit Tests', () {
    final homeVMZ = HomeViewModel();
    test('Initialization Test for HomeViewModel', () {
      expect(homeVM, isNot(null));
      expect(homeVM.itineraries, isAList);
      expect(homeVM.itineraries.length, isGreaterThan(\0));
    });
  });
}
