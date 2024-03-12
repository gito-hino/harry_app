import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'routing/app_router.dart';

void main() {
  final appRouter = AppRouter();

  runApp(
    ProviderScope(
      child: MaterialApp.router(
        // GoRouterの設定を適用
        routeInformationParser: appRouter.goRouter.routeInformationParser,
        routerDelegate: appRouter.goRouter.routerDelegate,
        restorationScopeId: null,
      ),
    ),
  );
}