// todos_page.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'todo_provider.dart';

class TodosPage extends StatelessWidget {
  const TodosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todos'),
      ),
      body: Consumer<TodoProvider>(
        builder: (context, provider, child) {
          return FutureBuilder(
            future: provider.fetchTodos(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              } else if (snapshot.error != null) {
                return const Center(child: Text('An error occurred!'));
              } else {
                return ListView.builder(
                  itemCount: provider.todos.length,
                  itemBuilder: (ctx, i) => ListTile(
                    title: Text(provider.todos[i].title),
                    subtitle: Text(provider.todos[i].completed ? 'Completed' : 'Incomplete'),
                  ),
                );
              }
            },
          );
        },
      ),
    );
  }
}
