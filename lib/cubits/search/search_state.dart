part of 'search_cubit.dart';

class TodoSearchState extends Equatable {
  final String searchTerm;

  const TodoSearchState({
    required this.searchTerm,
  });

  factory TodoSearchState.initial() {
    return const TodoSearchState(searchTerm: '');
  }

  TodoSearchState copyWith({String? searchTerm}) {
    return TodoSearchState(
      searchTerm: searchTerm ?? this.searchTerm,
    );
  }

  @override
  List<Object> get props => [searchTerm];

  @override
  String toString() {
    return 'TodoSearchState{searchTerm: $searchTerm}';
  }
}
