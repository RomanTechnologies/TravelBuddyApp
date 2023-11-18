import 'package:flutter/flutter.dart';
import 'models/destination.dart';

import 'services/firebase_service.dart';
import '../services\/api_service.dart';

class DestinationViewModel extends ChangeNotifier {
  FirebaseService _firebaseService = FirebaseService();
  APIService _apiService = APIService();
  List<Destination> destinations = [];

  setUp() async {
    var response = await _apiService.getDestinations();
    destinations = response.map(Destination.fromJson).toList(as.List<Destination>);
    notifyListeners();
  }
}
