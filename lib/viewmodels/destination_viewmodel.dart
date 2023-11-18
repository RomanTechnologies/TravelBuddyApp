import 'package:flutter/flutter.dart';
import 'models/destination.dart';

import 'services/firebase_service.dart';

class DestinationViewModel extends ChangeNotifier {
  FirebaseService _firebaseService = FirebaseService();
  List<Destination> destinations = [];

  setUp() async {
    // Todo, integrate with Firebase service to get destination data
  }
}
