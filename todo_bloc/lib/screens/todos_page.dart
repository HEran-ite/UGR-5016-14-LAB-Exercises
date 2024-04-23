import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/todo_bloc.dart';


class TodosPage extends StatelessWidget {
  const TodosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todos'),
      ),
      body: BlocBuilder<TodoBloc, TodoState>(
        builder: (context, state) {
          if (state is TodoLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is TodoLoaded) {
            return ListView.builder(
              itemCount: state.todos.length,
              itemBuilder: (ctx, i) => ListTile(
                title: Text(state.todos[i].title),
                subtitle: Text(state.todos[i].completed ? 'Completed' : 'Incomplete'),
              ),
            );
          } else if (state is TodoError) {
            return Center(child: Text(state.message));
          } else {
            return const SizedBox(); // Placeholder widget
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<TodoBloc>().add(FetchTodos());
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
