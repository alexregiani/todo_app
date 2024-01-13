import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:todo_app/models/todo_model.dart';

part 'todo_list_state.dart';

class TodoListCubit extends Cubit<TodoListState> {
  TodoListCubit() : super(TodoListState.initial());

  void addTodo(List<TodoModel> newTodoList) {
    emit(state.copyWith(newTodoList: newTodoList));
  }
}
