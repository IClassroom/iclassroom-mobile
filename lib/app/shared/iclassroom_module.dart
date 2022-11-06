import 'package:flutter/material.dart';

class IclassroomModule extends StatefulWidget {
  final Map<String, Widget> routes;

  const IclassroomModule({Key? key, required this.routes}) : super(key: key);

  @override
  State<IclassroomModule> createState() => _IclassroomModuleState();
}

class _IclassroomModuleState extends State<IclassroomModule> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.of(context).canPop()
            ? Navigator.of(context).pop()
            : Navigator.of(context, rootNavigator: true).pop();
        return true;
      },
      child: Navigator(
        onGenerateRoute: _generateRoutes,
      ),
    );
  }

  Route? _generateRoutes(RouteSettings settings) {
    Widget? page = widget.routes[settings.name];
    debugPrint('Page => ${settings.name}');
    if (page == null || (ModalRoute.of(context)!.settings.arguments as Map<String, String>? ?? {})['route'] != null) return _splitRoutes(settings);
    return MaterialPageRoute(builder: (context) => page, settings: settings);
  }

  Route? _splitRoutes(RouteSettings settings) {
    debugPrint('Page not found, go to split');
    Map<String, String>? arguments = ModalRoute.of(context)!.settings.arguments as Map<String, String>?;
    debugPrint('arguments routes => $arguments');

    arguments ??= {'route': settings.name!};
    List<String> routesList = arguments['route']!.split('/');
    routesList.removeAt(0);

    debugPrint('after routes => $routesList');
    debugPrint('Route to go => /${routesList[0] ?? ''}');
    Widget? page = widget.routes['/${routesList[0]}'];

    debugPrint('final Page: $page');
    RouteSettings newSettings = RouteSettings(arguments: {'route': routesList.join('/')});
    print(newSettings);
    debugPrint('#############');
    return MaterialPageRoute(
      builder: (context) =>
          page ??
          Scaffold(
            backgroundColor: Theme.of(context).primaryColor,
            body: const Center(
              child: Text(
                'Página não encontrada',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
      settings: newSettings,
    );
  }
}
