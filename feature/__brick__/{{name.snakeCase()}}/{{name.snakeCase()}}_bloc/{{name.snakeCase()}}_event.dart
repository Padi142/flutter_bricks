part of '{{name.snakeCase()}}_bloc.dart';

abstract class {{name.pascalCase()}}Event extends Equatable {
  const {{name.pascalCase()}}Event();

  @override
  List<Object> get props => [];
}

class InitialEvent extends {{name.pascalCase()}}Event {
  const InitialEvent();
}
