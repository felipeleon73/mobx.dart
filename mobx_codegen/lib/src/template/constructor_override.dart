import 'package:mobx_codegen/src/template/store.dart';

import 'method_override.dart';

class ConstructorOverrideTemplate {
  StoreTemplate store;
  MethodOverrideTemplate constructor;

  String get constructorName => constructor.name == ''
      ? store.publicTypeName
      : '${store.publicTypeName}.${constructor.name}';

  String get superConstructorName =>
      constructor.name == '' ? 'super' : 'super.${constructor.name}';

  @override
  String toString() => '''
    $constructorName(${constructor.params}) : $superConstructorName(${constructor.args});
  ''';
}
