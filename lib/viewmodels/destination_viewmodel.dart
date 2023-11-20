import 'package:flutter/flutter.dart';
import 'models/destination.dart';

import 'services/firebase_service.dart';
import '../services\/api_service.dart';

import 'viewmodels/base_viewmodel.dart';

import 'utils/logger.dart';

import 'utils/enums.dart';

/**
 * DestinationViewModel that interacts with FirebaseService and APIService to fetch and update destination data
 */
class DestinationViewModel extends BaseViewModel {
  FirebaseService _firebaseService;
  APIService _apiService;
  List<Destination> destinations;

  DestinationViewModel() {
    _firebaseService = FirebaseService();
    _apiService = APIService();
  }

  // Initializes the viewModel by interacting with FirebaseService and APIService to fetch destination data
  void initVoid()async {
    try {
      var destinationsData = await _firebaseService.getDestinations();
      // Update the destination data and notify listeners
    } catch (e) {
      logger.e(e.toString());
    }
  }
}
