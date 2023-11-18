import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart';

class APIService {
  final string apiUrl = 'https://example.com/api';

  Future<List<Dynamic>> getDestinations() async {
    var response = await Http.get(Uri.parse(apiUrl + '/destinations'));
    if (response.statusCode == 200) {
      return jsonDecode(response.body) as List<Dynamic>;
    } else {
      throw Exception('Failed to load destination data');
    }
  }
}
