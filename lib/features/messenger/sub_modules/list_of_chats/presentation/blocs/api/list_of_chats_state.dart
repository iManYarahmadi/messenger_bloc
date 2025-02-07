part of 'list_of_chats_bloc.dart';

/// ## [ListOfChatsState] Class Documentation
///
/// The [ListOfChatsState] class represents the various states managed by the [BranchNewsBloc]. Each state corresponds to a specific
/// condition or stage in the process of fetching and handling branch news data.
///
/// ### States:
///
/// - [BranchNewsState.initial()]: Represents the initial state of the bloc, before any data has been fetched or any actions have been taken.
///
/// - [BranchNewsState.loading()]: Indicates that the process of fetching branch news data is currently underway. This state is used
///   to signal that a request is in progress and data is being retrieved.
///
/// - [BranchNewsState.loaded(success: BranchNewsModel)]: Indicates that the branch news data has been successfully fetched. The
///   [BranchNewsModel] provides the details of the fetched data.
///
/// - [BranchNewsState.error(error: ErrorResponseModel)]: Represents an error state when data fetching fails. The [ErrorResponseModel]
///   contains details about the error that occurred.
///
/// ### Usage:
///
/// These states are used to manage and reflect the different stages of data retrieval and error handling for branch news data:
///
/// - **Initial State**: Used to indicate the starting condition of the bloc.
/// - **Loading State**: Shown when the bloc is in the process of fetching data.
/// - **Loaded State**: Displayed when the data has been successfully fetched, with the fetched data included.
/// - **Error State**: Shown when there is an error in data fetching, with error details provided.
///
/// ### Example:
///
/// ```dart
/// final branchNewsBloc = BranchNewsBloc(useCase);
///
@freezed
class ListOfChatsState with _$ListOfChatsState {
  const factory ListOfChatsState.initial() = _Initial;

  const factory ListOfChatsState.loading() = _Loading;

  const factory ListOfChatsState.loaded(
      {required ListOfChatsModel success}) = _Loaded;

  const factory ListOfChatsState.error(
      {required ErrorResponseModel error}) = _Error;
}
