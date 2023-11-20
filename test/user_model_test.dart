import 'package:flutter/test.dart';
import '../lib/models/user.dart';

void main() {
  test('User Model Unit Tests', () {
    final user = User(id: '123', name: 'John Doe', email: 'jonhd@example.com');

    test('Test User Model Properties',() {
      expect(user.id, '123');
      expect(user.name, 'John Doe');
      expect(user.email, 'jonhd@example.com');
    });
  });
}
