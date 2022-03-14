import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:moments/router/router.gr.dart';

class MomentsApp extends StatelessWidget {
  MomentsApp({Key? key}) : super(key: key);

  final _appRouter = GetIt.I<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Moments',
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}