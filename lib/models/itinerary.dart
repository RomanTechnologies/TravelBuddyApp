import 'dart:convert';

import 'user.dart';

class Itinerary {
  final String id;
  final User user;
  final DateTime startDate;
  final DateTime endDate;
  final List<Destination> destinations;\n\n  Itinerary({required this.id, required this.user, required this.startDate, required this.endDate, required this.destinations});\n}
