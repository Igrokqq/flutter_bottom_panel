import 'package:auto_route/auto_route.dart';
import 'package:flutter_bottom_bar/app.dart';
import 'package:flutter_bottom_bar/src/features/home/presentation/home_screen.dart';
import 'package:flutter_bottom_bar/src/features/list/presentation/list_screen.dart';
import 'package:flutter_bottom_bar/src/features/profile/presentation/profile_screen.dart';


@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      page: MyAppPage,
      children: [
        AutoRoute(path: 'home', page: HomePage, initial: true),
        AutoRoute(path: 'list', page: ListPage),
        AutoRoute(path: 'profile', page: ProfilePage)
      ]
    ),
  ],
)
class $AppRouter {}
