import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

Uuid uuid = const Uuid();

enum Filter {
  all,
  active,
  completed,
}

class Todo extends Equatable {
  final String id;
  final String description;
  final bool completion;

  Todo({
    String? id,
    required this.description,
    this.completion = false,
  }) : id = id ?? uuid.v4();

  @override
  List<Object> get props => [id, description, completion];

  @override
  String toString() => 'Todo{id: $id, description: $description, completion: $completion}';
}
