import 'package:flutter/flutter.dart';
import 'models/itinerary.dart';

import 'models/destination.dart';

import 'models/user.dart';

import 'services/firebase_service.dart';

class ItineraryViewModel extends ChangeNotifier {
  FirebaseService _firebaseService = FirebaseService();
  List<Itinerary> itineraries = [];

  setUp() async {
    // Todo, integrate with Firebase service to get user data and itineraries
  }
}
