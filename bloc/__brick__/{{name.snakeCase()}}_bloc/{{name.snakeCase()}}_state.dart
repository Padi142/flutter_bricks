import 'package:freezed_annotation/freezed_annotation.dart';

part '../bloc/{{name.snakeCase()}}_state.freezed.dart';

@freezed
abstract class {{name.pascalCase()}}State with _${{name.pascalCase()}}State {
  const factory {{name.pascalCase()}}State.loading() = Loading;
  const factory {{name.pascalCase()}}State.loaded() = Loaded;
}
