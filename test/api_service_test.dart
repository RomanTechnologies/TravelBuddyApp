import 'package:flutter/test.dart';
import '../lib/services/api_service.dart';

void main() {
  group('API Service Unit Tests',() {
    final apiService = APIService();

    test('Test getDestinations',() async {
      var destinations = await apiService.getDestinations();
      expect(destinations,isAList);
      expect(destinations.length, isGreaterThan(0));
    });
  });
}
