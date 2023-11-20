import 'package:flutter/flutter.dart';
import 'viewmodels/base_viewmodel.dart';
import 'models/itinerary.dart';
import 'models/user.dart';
import 'utils/enums.dart';
import 'utils/logger.dart';
import 'services/firebase_service.dart';

// Home ViewModel that interacts with the FirebaseService
class HomeViewModel {
  FirebaseService _firebaseService;

  HomeViewModel() {
    _notifyListeners = notifyListeners;
    _firebaseService = FirebaseService();
  }

  // Initializes the viewModel by fetching data from Firebase
  void initVoid()async {
    try {
      var userData = await _firebaseService.getUserData();
      if (userData != null) {
        // Handle user data processing and update the state
      }
    } catch (e) {
      logger.e(e.toString());
    }
  }
}
