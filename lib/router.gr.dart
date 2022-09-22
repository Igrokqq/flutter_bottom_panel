// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import 'app.dart' as _i1;
import 'src/features/home/presentation/home_screen.dart' as _i2;
import 'src/features/list/presentation/list_screen.dart' as _i3;
import 'src/features/profile/presentation/profile_screen.dart' as _i4;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    MyAppRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.MyAppPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.HomePage(),
      );
    },
    ListRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.ListPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.ProfilePage(),
      );
    },
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(
          MyAppRoute.name,
          path: '/',
          children: [
            _i5.RouteConfig(
              '#redirect',
              path: '',
              parent: MyAppRoute.name,
              redirectTo: 'home',
              fullMatch: true,
            ),
            _i5.RouteConfig(
              HomeRoute.name,
              path: 'home',
              parent: MyAppRoute.name,
            ),
            _i5.RouteConfig(
              ListRoute.name,
              path: 'list',
              parent: MyAppRoute.name,
            ),
            _i5.RouteConfig(
              ProfileRoute.name,
              path: 'profile',
              parent: MyAppRoute.name,
            ),
          ],
        )
      ];
}

/// generated route for
/// [_i1.MyAppPage]
class MyAppRoute extends _i5.PageRouteInfo<void> {
  const MyAppRoute({List<_i5.PageRouteInfo>? children})
      : super(
          MyAppRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'MyAppRoute';
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: 'home',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i3.ListPage]
class ListRoute extends _i5.PageRouteInfo<void> {
  const ListRoute()
      : super(
          ListRoute.name,
          path: 'list',
        );

  static const String name = 'ListRoute';
}

/// generated route for
/// [_i4.ProfilePage]
class ProfileRoute extends _i5.PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: 'profile',
        );

  static const String name = 'ProfileRoute';
}
