import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_firestore/firebase_firestore.dart';

import 'models/user.dart';
import 'models/itinerary.dart';

bool isUserLoggedIn = false;
class FirebaseService {
  late FirebaseAuth auth;
  late FirebaseFirestore firestore;

  FirebaseService() {
    auth = FirebaseAuth.instance;
    firestore = FirebaseFirestore.instance;
  }

void initAuthentication() async {
    var user = auths.currentUser;
    if (user != null) {
       isUserLoggedIn = true;
      // Handle user data loading and management here
    } else {
      isUserLoggedIn = false;
    }
  }

// Functions for user authentication and data management
}
