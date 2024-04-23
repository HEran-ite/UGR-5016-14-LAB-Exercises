import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/todo_model.dart';

part 'todo_event.dart';
part 'todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  TodoBloc() : super(TodoInitial());

  Stream<TodoState> mapEventToState(
    TodoEvent event,
  ) async* {
    if (event is FetchTodos) {
      yield* _mapFetchTodosToState();
    }
  }

  Stream<TodoState> _mapFetchTodosToState() async* {
    yield TodoLoading();
    try {
      final response =
          await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));
      if (response.statusCode == 200) {
        final List<dynamic> todoJson = json.decode(response.body);
        final todos = todoJson.map((json) => Todo.fromJson(json)).toList();
        yield TodoLoaded(todos: todos.cast<Todo>());
      } else {
        throw Exception('Failed to load todos');
      }
    } catch (e) {
      yield TodoError(message: 'An error occurred while fetching todos');
    }
  }
}
