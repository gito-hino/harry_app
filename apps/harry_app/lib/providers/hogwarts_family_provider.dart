import 'package:flutter_riverpod/flutter_riverpod.dart';

final hogwartsFamilyProvider = Provider<List<Map<String, String>>>((ref) {
  return [
    {"name": "Harry Potter", "age": "11", "house": "Gryffindor"},
    {"name": "Hermione Granger", "age": "11", "house": "Gryffindor"},
    {"name": "Ron Weasley", "age": "11", "house": "Gryffindor"},
    {"name": "Draco Malfoy", "age": "11", "house": "Slytherin"},
    {"name": "Luna Lovegood", "age": "11", "house": "Ravenclaw"},
    {"name": "Cedric Diggory", "age": "11", "house": "Hufflepuff"},
  ];
});
