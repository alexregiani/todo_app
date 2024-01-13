part of 'todo_list_cubit.dart';

class TodoListState extends Equatable {
  final List<TodoModel> todoList;

  const TodoListState({
    required this.todoList,
  });

  factory TodoListState.initial() {
    return TodoListState(
      todoList: [
        TodoModel(id: '1', description: 'Study Flutter', completion: false),
        TodoModel(id: '2', description: 'Study Figma'),
        TodoModel(id: '3', description: 'Study Rive'),
      ],
    );
  }

  TodoListState copyWith({List<TodoModel>? newTodoList}) {
    return TodoListState(todoList: newTodoList ?? todoList);
  }

  @override
  List<Object> get props => [todoList];
}
