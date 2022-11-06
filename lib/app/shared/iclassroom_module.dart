import 'package:flutter/material.dart';
import 'package:iclassroom/api/models/composted_route.dart';
import 'package:iclassroom/app/shared/widgets/iclassroom_not_found_page.dart';

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
    debugPrint('PAGE:: ${settings.name}');
    if (page == null || ModalRoute.of(context)!.settings.arguments is CompostedRoute) return _splitRoutes(settings);
    return MaterialPageRoute(builder: (context) => page, settings: settings);
  }

  Route? _splitRoutes(RouteSettings settings) {
    debugPrint('Page not found, splitting route');
    CompostedRoute? composedRoute = ModalRoute.of(context)!.settings.arguments as CompostedRoute?;

    composedRoute ??= CompostedRoute(route: settings.name!);
    List<String> routesList = composedRoute.route!.split('/');
    routesList.removeAt(0);

    debugPrint('ROUTE TU GO:: => /${routesList[0] ?? ''}');
    Widget? page = widget.routes['/${routesList[0]}'];

    debugPrint('TYPE PAGE:: $page');
    RouteSettings? newSettings = routesList.length > 1 ? RouteSettings(arguments: CompostedRoute(route: routesList.join('/'))) : null;
    return MaterialPageRoute(
      builder: (context) => page ?? const IclassroomNotFoundPage(),
      settings: newSettings,
    );
  }
}
