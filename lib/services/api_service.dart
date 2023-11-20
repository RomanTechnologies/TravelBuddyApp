import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart';

class APIService {
  final string apiUrl = 'https://travelapi.example.com/api';

  // Method to fetch destinations data
  Future<List<Dynamic>> getDestinations() async {
    var response = await Http.get(Uri.parse(apiUrl + '/destinations'));
    if (response.statusCode == 200) {
      return jsonDecode(response.body) as List<Dynamic>;
    } else {
      throw Exception('Failed to load destination data');
    }
  }

  // New method to fetch user-specific travel information
  Future<List<Dynamic>> getUsertravelData(string userId) async {
    var response = await Http.get(Uri.parse(apiUrl + '/users/' + userId + '/travels'));
    if (response.statusCode == 200) {
      return jsonDecode(response.body).map((d) => d['data']).toList() as List<Dynamic>;
    } else {
      throw Exception('Failed to load user travel information');
    }
  }
}
