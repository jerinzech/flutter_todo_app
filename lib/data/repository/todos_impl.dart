import 'package:flutter_todo_app/domain/model/todo.dart';
import 'package:flutter_todo_app/domain/repository/todos.dart';

import '../source/files.dart';

class TodosRepositoryImpl extends TodosRepository {
  TodosRepositoryImpl(this.files);
  final Files files;

  late final String path = 'todos.json';

  @override
  Future<void> deleteAllTodos() {
    throw UnimplementedError();
  }

  @override
  Future<void> deleteTodo(Todo todo) async {
    //delete files by path
    await files.delete(path);
  }

  @override
  Future<Todo?> getTodoById(String id) async {
    //load todo from path
    final content = await files.read(path);

    //transform it to json and then the todos list

    //optionally return
  }

  @override
  Future<List<Todo>> loadTodos() {
    // TODO: implement loadTodos
    throw UnimplementedError();
  }

  @override
  Future<void> saveTodo(Todo todo) {
    // TODO: implement saveTodo
    throw UnimplementedError();
  }
}
