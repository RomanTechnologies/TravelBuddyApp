import 'package:flutter/flutter.dart';
import 'package:firebase_core/firebase_core.dart';
import 'views/home_page.dart';
import 'widgets/custom_app_bar.dart';

// Initialize the Firebase app at the start of the application
// This is required for Firebase services to function correctly
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  // Set up the entry point of the application 
  runApp(MyApp();
}

// The main application widget
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel Buddy',
      theme: ThemeData(),
      home: HomePage(),
    );
  }
}
