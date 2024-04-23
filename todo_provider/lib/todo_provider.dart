// todo_provider.dart
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'todo_model.dart';

class TodoProvider with ChangeNotifier {
  List<Todo> _todos = [];

  List<Todo> get todos => _todos;

  Future<void> fetchTodos() async {
    const String url = 'https://jsonplaceholder.typicode.com/todos';  // Example URL
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      List<dynamic> todoJson = json.decode(response.body);
      _todos = todoJson.map((json) => Todo.fromJson(json)).toList();
      notifyListeners();
    } else {
      throw Exception('Failed to load todos');
    }
  }
}
