import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '{{name.snakeCase()}}_state.dart';

part '{{name.snakeCase()}}_event.dart';

class {{name.pascalCase()}}Bloc extends Bloc<{{name.pascalCase()}}Event, {{name.pascalCase()}}State> {

  {{name.pascalCase()}}Bloc() : super(const {{name.pascalCase()}}State.loading()) {
    on<InitialEvent>(_onInitialEvent);
  }

  Future<void> _onInitialEvent(
   InitialEvent event,
    Emitter<{{name.pascalCase()}}State> emit,
  ) async {
    emit(const {{name.pascalCase()}}State.loaded());

  }
}
