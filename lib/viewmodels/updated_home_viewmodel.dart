import 'package:flutter/flutter.dart';
import 'services/firebase_service.dart';
import 'models/user.dart';
import 'models/itinerary.dart';

class HomeViewModel extends ChangeNotifier {
  FirebaseService _firebaseService = FirebaseService();
  List<Itinerary> itineraries = [];

  setUp() async {
    // Todo, integrate with Firebase service to get user data and itineraries
  }
}
