import 'package:simpsonsviewer/Utils/Routes/app_route_constants.dart';
import 'package:simpsonsviewer/View/Pages/HomeScreen/home.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final GoRouter router = GoRouter(initialLocation: '/', routes: [
    GoRoute(
      name: AppRouteConsts.homeRouteName,
      path: '/',
      builder: (context, state) {
        return Home();
      },
    )
  ]);
}
