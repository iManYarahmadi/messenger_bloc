import 'package:base_structure_bloc/core/app_bloc_provider.dart';
import 'package:base_structure_bloc/core/route/app_router.dart';
import 'package:base_structure_bloc/features/messenger/core/di/messenger_get_it.dart';
import 'package:base_structure_bloc/features/messenger/core/enums/messenger_routes_enum.dart';
import 'package:base_structure_bloc/features/messenger/presentation/messenger_presentation.dart';
import 'core/theme/bloc/theme_bloc.dart';
import 'core/theme/theme.dart';

void main() {
  chatSetUpDependencies();
  runApp(MultiBlocProvider(providers: [
    AppBlocProvider.themeBlocProvider
  ],
  child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
        return MaterialApp.router(
          routerConfig: appRouter,
          title: 'Flutter Demo',
          theme: state.themeData,

        );
      }
    );
  }
}

