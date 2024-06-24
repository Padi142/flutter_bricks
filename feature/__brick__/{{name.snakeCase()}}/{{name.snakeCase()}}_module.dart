import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:qlevar_router/qlevar_router.dart';

import './{{name.snakeCase()}}_bloc/{{name.snakeCase()}}_bloc.dart';

import 'view/{{name.snakeCase()}}_view.dart';
import '../../library/app_module.dart';

class {{name.pascalCase()}}Module extends AppModule {
  @override
  void registerNavigation() {}

  @override
  void registerBloc() {
    GetIt.I.registerFactory<{{name.pascalCase()}}Bloc>(() => {{name.pascalCase()}}Bloc());
  }

  @override
  void registerScreen() {
    GetIt.I.registerFactory<{{name.pascalCase()}}Screen>(() => {{name.pascalCase()}}Screen());
  }

  @override
  void registerRoute(routes) {
    routes.add(
      QRoute(
        builder: () => MultiBlocProvider(providers: [
          BlocProvider<{{name.pascalCase()}}Bloc>.value(
            value: GetIt.I.get<{{name.pascalCase()}}Bloc>(),
          ),
        ], child: GetIt.I.get<{{name.pascalCase()}}Screen>()),
        name: {{name.pascalCase()}}Screen.name,
        path: '/${{{name.pascalCase()}}Screen.name}',
        middleware: [
          //AuthMiddleware(loadUserUseCase: di.get<LoadUserUseCase>()),
        ],
      ),
    );
  }
}
