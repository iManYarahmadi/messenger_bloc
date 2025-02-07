import 'package:base_structure_bloc/core/route/app_routes_enum.dart';
import 'package:base_structure_bloc/features/messenger/core/messenger_routes.dart';
import 'package:base_structure_bloc/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../app_bloc_provider.dart';

final appRouter = GoRouter(initialLocation: AppRoutes.base.path, routes: [
  GoRoute(
      path: AppRoutes.base.path,
      name: AppRoutes.base.name,
      pageBuilder: (context, state) => transitionPage(
            MultiBlocProvider(
              providers: [AppBlocProvider.themeBlocProvider],
              child: const BaseScreen(),
            ),
            beginOffset: const Offset(0.0, 1.0),
          ),
      routes: [messengerRoutes])
]);

/// By using this function, pages are moved with animation
CustomTransitionPage transitionPage(Widget screen, {Offset? beginOffset}) {
  return CustomTransitionPage(
    child: screen,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      final begin = beginOffset ?? const Offset(1.0, 0.0);
      const end = Offset.zero;
      final tween = Tween(begin: begin, end: end);
      final offsetAnimation = animation.drive(tween);

      return SlideTransition(
        position: offsetAnimation,
        child: child,
      );
    },
  );
}
