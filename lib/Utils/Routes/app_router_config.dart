import 'package:fluttemp/Utils/Routes/app_route_constants.dart';
import 'package:fluttemp/View/Pages/HomeScreen/home.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  GoRouter router = GoRouter(routes: [
    GoRoute(
      name: AppRouteConsts.homeRouteName,
      path: '/',
      builder: (context, state) {
        return const Home();
      },
    )
  ]);
}
