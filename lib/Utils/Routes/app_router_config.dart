import 'dart:convert';

import 'package:simpsonsviewer/Utils/Routes/app_route_constants.dart';
import 'package:simpsonsviewer/View/Pages/DescriptionScreen/description.dart';
import 'package:simpsonsviewer/View/Pages/HomeScreen/home.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final GoRouter router = GoRouter(initialLocation: '/', routes: [
    GoRoute(
      name: AppRouteConsts.homeRouteName,
      path: '/',
      builder: (context, state) {
        return const Home();
      },
    ),
    GoRoute(
      name: AppRouteConsts.descriptionPageRouteName,
      path: '/:character/:name',
      builder: (context, state) {
        final char = state.pathParameters['character'];
        final name = state.pathParameters['name'];
        final charJson = jsonDecode(char!);
        return DescriptionPage(
          character: charJson,
          name: name,
        );
      },
    )
  ]);
}
