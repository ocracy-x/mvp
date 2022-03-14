import 'package:auto_route/auto_route.dart';
import 'package:get_it/get_it.dart';
import 'package:moments/services/auth.dart';

class UnauthGuard extends AutoRouteGuard {
  final _auth = GetIt.I<AuthService>();

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    resolver.next(!_auth.isAuthenticated);
  }
}
