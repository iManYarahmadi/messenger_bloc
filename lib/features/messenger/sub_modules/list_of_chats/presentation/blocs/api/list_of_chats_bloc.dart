import 'package:base_structure_bloc/core/base/data_sources/remote_data_source.dart';
import 'package:base_structure_bloc/data/models/error_response_model.dart';
import 'package:base_structure_bloc/features/messenger/sub_modules/list_of_chats/data/models/list_of_chats_model.dart';
import 'package:base_structure_bloc/features/messenger/sub_modules/list_of_chats/data/params/list_of_chats_params.dart';
import 'package:base_structure_bloc/features/messenger/sub_modules/list_of_chats/domain/usecases/list_of_chats_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_of_chats_bloc.freezed.dart';
part 'list_of_chats_event.dart';
part 'list_of_chats_state.dart';

/// ## [ListOfChatsBloc] Class Documentation
///
/// The [ListOfChatsBloc] class extends [Bloc] and manages the state and business logic for fetching branch news data.
///
/// ### Usage:
///
/// Use this bloc to handle events related to fetching branch news and to manage the corresponding states. It facilitates the interaction
/// between the presentation layer and the business logic layer, encapsulating the logic for responding to events and emitting appropriate states.
///
/// ### Properties:
///
/// - [_useCase] : An instance of [BranchNewsUseCase] used to execute the use case logic for fetching branch news data.
///
/// ### States:
///
/// - [BranchNewsState.initial()]: Represents the initial state of the bloc before any data is fetched.
/// - [BranchNewsState.loading()]: Indicates that the process of fetching branch news data is currently in progress.
/// - [BranchNewsState.error(error: ErrorResponseModel)]: Represents an error state, providing the [ErrorResponseModel] with details of the error.
/// - [BranchNewsState.loaded(success: BranchNewsModel)]: Indicates that branch news data has been successfully fetched, providing the [BranchNewsModel] with the loaded data.
///
/// ### Events:
///
/// - [BranchNewsEvent.getResponse(params: BranchNewsParams)]: Triggers the process to fetch branch news data using the provided parameters.
/// - [BranchNewsEvent.resetBloc()]: Resets the bloc to its initial state, clearing any current data or errors.
///
class ListOfChatsBloc extends Bloc<ListOfChatsEvent, ListOfChatsState> {
  final ListOfChatsUseCase _useCase;

  ListOfChatsBloc(this._useCase) : super(const ListOfChatsState.initial()) {
    on<ListOfChatsEvent>((event, emit) async {
      await event.when(
        getResponse: (params) async {
          emit(const ListOfChatsState.loading());
          final Either<RemoteDataState<ErrorResponseModel>, RemoteDataState<ListOfChatsModel>> response = await _useCase(params: params);

          response.fold(
                (errorState) => emit(ListOfChatsState.error(error: errorState.remoteData!)),
                (successState) => emit(ListOfChatsState.loaded(success: successState.remoteData!)),
          );
        },
        resetBloc: () async => emit(const ListOfChatsState.initial()),

          addChat: (userNumber, userName, message) async {
            final currentState = state;
            if (currentState is _Loaded) {
              final updatedChats = List<Chat>.from(currentState.success.chatsListModel.chats ?? []);

              // Find the existing chat by userNumber
              var existingChatIndex = updatedChats.indexWhere((chat) => chat.userNumber == userNumber);
              if (existingChatIndex != -1) {
                // If user exists, update their messages
                updatedChats[existingChatIndex] = updatedChats[existingChatIndex].copyWith(
                  userMessage: [...updatedChats[existingChatIndex].userMessage, message],
                );
              } else {
                // If user doesn't exist, create a new chat entry
                updatedChats.add(Chat(
                  userNumber: userNumber,
                  userName: userName,
                  userMessage: [message],
                  phoneNumber: "0000000000", // Default or fetched dynamically
                ));
              }

              // Emit the updated state
              emit(ListOfChatsState.loaded(
                success: currentState.success.copyWith(
                  chatsListModel: currentState.success.chatsListModel.copyWith(chats: updatedChats),
                ),
              ));
            }
          }
      );
    });
  }
}

