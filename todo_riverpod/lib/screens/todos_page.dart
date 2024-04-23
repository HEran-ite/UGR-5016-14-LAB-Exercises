import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/todo_provider.dart';

class TodosPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todosAsyncValue = ref.watch(todoProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text('Todos'),
      ),
      body: todosAsyncValue.when(
        loading: () => Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) => Center(child: Text('An error occurred!')),
        data: (todos) => ListView.builder(
          itemCount: todos.length,
          itemBuilder: (ctx, i) => ListTile(
            title: Text(todos[i].title),
            subtitle: Text(todos[i].completed ? 'Completed' : 'Incomplete'),
          ),
        ),
      ),
    );
  }
}
