import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class FirebaseService {
  late FirebaseAuth auth;
  late FirebaseFirestore firestore;

  FirebaseService() {
    auth = FirebaseAuth.instance;
    firestore = FirebaseFirestore.instance;
  }
}
