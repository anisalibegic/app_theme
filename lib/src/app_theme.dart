import 'package:flutter/widgets.dart';

import 'package:app_theme/src/base_app_theme_data.dart';

class AppTheme extends StatelessWidget {
  final Widget? child;
  final WidgetBuilder? builder;
  final BaseAppThemeData appTheme;

  const AppTheme({
    Key? key,
    this.child,
    this.builder,
    required this.appTheme,
  })   : assert(child != null || builder != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return _AppTheme(
      appThemeData: appTheme,
      child: child ?? builder!(context),
    );
  }

  static BaseAppThemeData of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<_AppTheme>())!.appThemeData;
  }
}

class _AppTheme extends InheritedWidget {
  final BaseAppThemeData appThemeData;

  const _AppTheme({
    Key? key,
    required Widget child,
    required this.appThemeData,
  }) : super(key: key, child: child);

  @override
  bool updateShouldNotify(_AppTheme old) => appThemeData != old.appThemeData;
}
