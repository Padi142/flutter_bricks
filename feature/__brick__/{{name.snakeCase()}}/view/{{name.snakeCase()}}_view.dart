import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../library/app_screen.dart';
import '../{{name.snakeCase()}}_bloc/{{name.snakeCase()}}_bloc.dart';
import '../{{name.snakeCase()}}_bloc/{{name.snakeCase()}}_state.dart';


class {{name.pascalCase()}}Screen extends Screen {
  static const String name = ScreenPath.{{name.camelCase()}}Screen;

  {{name.pascalCase()}}Screen({Key? key}) : super(name, key: key);

  @override
  State<StatefulWidget> createState() => _{{name.pascalCase()}}ScreenState();
}

class _{{name.pascalCase()}}ScreenState extends State<{{name.pascalCase()}}Screen> {
  @override
  void initState() {
    BlocProvider.of<{{name.pascalCase()}}Bloc>(context).add(const InitialEvent());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        return BlocBuilder<{{name.pascalCase()}}Bloc, {{name.pascalCase()}}State>(builder: (context, state) {
          return state.map(loading: (loading) {
            return const CircularProgressIndicator();
          }, loaded: (loaded) {
            return _buildContent(constraints);
          });
        });
      }),
    );
  }

  _buildContent(BoxConstraints constraints) {
    return SingleChildScrollView(
      child: Container(),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
