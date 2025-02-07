
import 'package:base_structure_bloc/core/locale/language_manager.dart';
import 'package:base_structure_bloc/features/messenger/core/constants/messenger_bloc_providers.dart';
import 'package:base_structure_bloc/features/messenger/sub_modules/list_of_chats/data/repositories/list_of_chats_repository_impl.dart';
import 'package:base_structure_bloc/features/messenger/sub_modules/list_of_chats/data/services/list_of_chats_service.dart';
import 'package:base_structure_bloc/features/messenger/sub_modules/list_of_chats/domain/repositories/list_of_chats_repository.dart';
import 'package:base_structure_bloc/features/messenger/sub_modules/list_of_chats/domain/usecases/list_of_chats_usecase.dart';

/// ## [chatSetUpDependencies] Function Documentation
///
/// The [chatSetUpDependencies] function registers the necessary dependencies for the messenger feature of the application.
///
/// ### Usage:
///
/// The [chatSetUpDependencies] function is used to register various services, repositories, and use cases related to the messenger feature with the dependency injection container.
///
/// ### Services Registered:
///
///
/// ### Repositories Registered:
///
///
/// ### Use Cases Registered:
///
///
/// ### Example usage:
/// ```dart
/// dormitorySetUpDependencies();
/// ```

void chatSetUpDependencies() {
  getIt.registerSingleton<LanguageManager>(LanguageManager());

  getIt.registerLazySingleton<ListOfChatsService>(
          () => ListOfChatsService());
  getIt.registerLazySingleton<ListOfChatRepository>(
          () => ListOfChatsRepositoryImpl(getIt()));
  getIt.registerLazySingleton<ListOfChatsUseCase>(
          () => ListOfChatsUseCase(getIt()));
}
