// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i9;

import '../util/unauth_guard.dart' as _i10;
import '../views/feed_page.dart' as _i6;
import '../views/home_page.dart' as _i2;
import '../views/not_found.dart' as _i3;
import '../views/onboarding/link_sent_page.dart' as _i5;
import '../views/onboarding/login_page.dart' as _i4;
import '../views/search_page.dart' as _i7;
import '../views/you_page.dart' as _i8;

class AppRouter extends _i1.RootStackRouter {
  AppRouter(
      {_i9.GlobalKey<_i9.NavigatorState>? navigatorKey,
      required this.unauthGuard})
      : super(navigatorKey);

  final _i10.UnauthGuard unauthGuard;

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    AuthRouter.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.EmptyRouterPage());
    },
    HomeRouter.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.HomePage());
    },
    NotFoundRoute.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.NotFoundPage());
    },
    LoginRoute.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.LoginPage());
    },
    LinkSentRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<LinkSentRouteArgs>(
          orElse: () =>
              LinkSentRouteArgs(email: pathParams.getString('email')));
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i5.LinkSentPage(key: args.key, email: args.email));
    },
    FeedRouter.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.EmptyRouterPage());
    },
    SearchRouter.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.EmptyRouterPage());
    },
    YouRouter.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.EmptyRouterPage());
    },
    FeedRoute.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.FeedPage());
    },
    SearchRoute.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.SearchPage());
    },
    YouRoute.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.YouPage());
    }
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(AuthRouter.name, path: '/', guards: [
          unauthGuard
        ], children: [
          _i1.RouteConfig('#redirect',
              path: '',
              parent: AuthRouter.name,
              redirectTo: 'login',
              fullMatch: true),
          _i1.RouteConfig(LoginRoute.name,
              path: 'login', parent: AuthRouter.name),
          _i1.RouteConfig(LinkSentRoute.name,
              path: 'linkSent/:email', parent: AuthRouter.name),
          _i1.RouteConfig(NotFoundRoute.name,
              path: '*', parent: AuthRouter.name)
        ]),
        _i1.RouteConfig(HomeRouter.name, path: 'home', children: [
          _i1.RouteConfig(FeedRouter.name,
              path: 'feed',
              parent: HomeRouter.name,
              children: [
                _i1.RouteConfig(FeedRoute.name,
                    path: '', parent: FeedRouter.name),
                _i1.RouteConfig(NotFoundRoute.name,
                    path: '*', parent: FeedRouter.name)
              ]),
          _i1.RouteConfig(SearchRouter.name,
              path: 'search',
              parent: HomeRouter.name,
              children: [
                _i1.RouteConfig(SearchRoute.name,
                    path: '', parent: SearchRouter.name),
                _i1.RouteConfig(NotFoundRoute.name,
                    path: '*', parent: SearchRouter.name)
              ]),
          _i1.RouteConfig(YouRouter.name,
              path: 'you',
              parent: HomeRouter.name,
              children: [
                _i1.RouteConfig(YouRoute.name,
                    path: '', parent: YouRouter.name),
                _i1.RouteConfig(NotFoundRoute.name,
                    path: '*', parent: YouRouter.name)
              ])
        ]),
        _i1.RouteConfig(NotFoundRoute.name, path: '*')
      ];
}

/// generated route for
/// [_i1.EmptyRouterPage]
class AuthRouter extends _i1.PageRouteInfo<void> {
  const AuthRouter({List<_i1.PageRouteInfo>? children})
      : super(AuthRouter.name, path: '/', initialChildren: children);

  static const String name = 'AuthRouter';
}

/// generated route for
/// [_i2.HomePage]
class HomeRouter extends _i1.PageRouteInfo<void> {
  const HomeRouter({List<_i1.PageRouteInfo>? children})
      : super(HomeRouter.name, path: 'home', initialChildren: children);

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i3.NotFoundPage]
class NotFoundRoute extends _i1.PageRouteInfo<void> {
  const NotFoundRoute() : super(NotFoundRoute.name, path: '*');

  static const String name = 'NotFoundRoute';
}

/// generated route for
/// [_i4.LoginPage]
class LoginRoute extends _i1.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: 'login');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i5.LinkSentPage]
class LinkSentRoute extends _i1.PageRouteInfo<LinkSentRouteArgs> {
  LinkSentRoute({_i9.Key? key, required String email})
      : super(LinkSentRoute.name,
            path: 'linkSent/:email',
            args: LinkSentRouteArgs(key: key, email: email),
            rawPathParams: {'email': email});

  static const String name = 'LinkSentRoute';
}

class LinkSentRouteArgs {
  const LinkSentRouteArgs({this.key, required this.email});

  final _i9.Key? key;

  final String email;

  @override
  String toString() {
    return 'LinkSentRouteArgs{key: $key, email: $email}';
  }
}

/// generated route for
/// [_i1.EmptyRouterPage]
class FeedRouter extends _i1.PageRouteInfo<void> {
  const FeedRouter({List<_i1.PageRouteInfo>? children})
      : super(FeedRouter.name, path: 'feed', initialChildren: children);

  static const String name = 'FeedRouter';
}

/// generated route for
/// [_i1.EmptyRouterPage]
class SearchRouter extends _i1.PageRouteInfo<void> {
  const SearchRouter({List<_i1.PageRouteInfo>? children})
      : super(SearchRouter.name, path: 'search', initialChildren: children);

  static const String name = 'SearchRouter';
}

/// generated route for
/// [_i1.EmptyRouterPage]
class YouRouter extends _i1.PageRouteInfo<void> {
  const YouRouter({List<_i1.PageRouteInfo>? children})
      : super(YouRouter.name, path: 'you', initialChildren: children);

  static const String name = 'YouRouter';
}

/// generated route for
/// [_i6.FeedPage]
class FeedRoute extends _i1.PageRouteInfo<void> {
  const FeedRoute() : super(FeedRoute.name, path: '');

  static const String name = 'FeedRoute';
}

/// generated route for
/// [_i7.SearchPage]
class SearchRoute extends _i1.PageRouteInfo<void> {
  const SearchRoute() : super(SearchRoute.name, path: '');

  static const String name = 'SearchRoute';
}

/// generated route for
/// [_i8.YouPage]
class YouRoute extends _i1.PageRouteInfo<void> {
  const YouRoute() : super(YouRoute.name, path: '');

  static const String name = 'YouRoute';
}
