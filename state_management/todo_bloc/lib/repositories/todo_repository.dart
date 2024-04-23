import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../models/todo_model.dart';

class TodoRepository {
  Future<List<Todo>> fetchTodos() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));
    if (response.statusCode == 200) {
      final List<dynamic> todoJson = json.decode(response.body);
      final todos = todoJson.map((json) => Todo.fromJson(json)).toList();
      return todos;
    } else {
      throw Exception('Failed to load todos');
    }
  }
}
