import 'package:flutter/test.dart';
import '../lib/services/firebase_service.dart';

void main() {
  group('Firebase Service Unit Tests', setUpTests);
}

void setUpTests() {
  test('Test for initialization of FirebaseService',() {
    final firebaseService = FirebaseService();
    expect(firebaseService, isNot(null));
    expect(firebaseService.auth, isNot(null));
    expect(firebaseService.firestore, isNot(null));
  });
}
