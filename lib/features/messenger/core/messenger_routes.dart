import 'package:base_structure_bloc/core/route/app_router.dart';
import 'package:base_structure_bloc/features/messenger/core/enums/messenger_routes_enum.dart';
import 'package:base_structure_bloc/features/messenger/sub_modules/list_of_chats/presentation/screens/chats_details_screen.dart';
import 'package:flutter/animation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../presentation/screens/messenger_base_screen.dart';
import 'constants/messenger_bloc_providers.dart';

/// ## [messengerRoutes] Documentation
///
/// Defines the routing configuration for the Dormitory feature.
///
/// The [messengerRoutes] variable represents the routing configuration for the messenger-related screens in the application. It defines various routes, their names, page builders, and transitions.
/// This [GoRoute] object sets up the navigation routes and pages for the Dormitory feature.
/// This routing configuration is typically used with a navigation system to navigate between different screens in the messenger section of the app.
///
/// ### Routes:
///
/// - `DormitoryRoutes.base`: Represents the base messenger screen.
///
/// The `dormitoryRoutes` configuration includes nested routes for different screens and uses custom transitions for screen animations.
///
final messengerRoutes = GoRoute(
  path: MessengerRoutes.dormitoryBase.name,
  name: MessengerRoutes.dormitoryBase.name,
  pageBuilder: (context, state) => transitionPage(
    MultiBlocProvider(
      providers: [ListOfChatBlocProviders.listOfChatsBloc],
      child: const DormitoryBaseScreen(),
    ),
    beginOffset: const Offset(0.0, 1.0),
  ),
  routes: [
    GoRoute(
    path: MessengerRoutes.chatDetails.name,
      name: MessengerRoutes.chatDetails.name,
      pageBuilder: (context, state) => transitionPage(
        MultiBlocProvider(
          providers: [ListOfChatBlocProviders.listOfChatsBloc],
          child: const ChatDetailScreen(),
        ),
        beginOffset: const Offset(0.0, 1.0),
      ),
    )
  ]
);
