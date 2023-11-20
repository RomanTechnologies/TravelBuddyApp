import 'package:flutter/flutter.dart';
import 'models/itinerary.dart';

import 'models/destination.dart';

import 'models/user.dart';

import 'services/firebase_service.dart';

import 'viewmodels/base_viewmodel.dart';

import 'utils/logger.dart';

import 'utils/enums.dart';

/**
 * ItineraryViewModel that interacts with the FirebaseService to fetch and update itinerary data
 */
class ItineraryViewModel extends BaseViewModel {
  FirebaseService _firebaseService;

  ItineraryViewModel() {
    _firebaseService = FirebaseService();
  }

  // Initializes the viewModel by interacting with FirebaseService to fetch itinerary data
  void initVoid()async {
    try {
      var itinerariesData = await _firebaseService.getItineraries();
      if (itinerariesData != null) {
        // Update the itinerary data and notify listeners
      }
    } catch (e) {
      logger.e(e.toString());
    }
  }
}
