import 'package:flutter/test.dart';
import '../lib/viewmodels/destination_viewModel.dart';
import '../lib/models/destination.dart';

void main() {
  group('Destination ViewModel Unit Tests',() {
    final destinationVM = DestinationViewModel();
    test('Initialization Test for DestinationViewModel',() {
      expect(destinationVM, isNot(null));
      expect(destinationVM.destinations, isAList);
      expect(destinationVM.destinations.length, isGreaterThan(0));
  });
  });
}
