part of 'list_of_chats_bloc.dart';

/// ## [ListOfChatsEvent] Class Documentation
///
/// The [ListOfChatsEvent] class defines the events that the [BranchNewsBloc] handles. These events are used to trigger actions and state
/// transitions within the bloc.
///
/// ### Events:
///
/// - [BranchNewsEvent.getResponse(params: BranchNewsParams)]: This event is triggered to fetch branch news data. It requires
///   the [BranchNewsParams] parameter to specify which branch's news data should be retrieved.
///
/// - [BranchNewsEvent.resetBloc()]: This event is used to reset the bloc to its initial state. It clears any current data or errors
///   and sets the state back to the initial condition.
///
/// ### Usage:
///
/// Use these events with the [BranchNewsBloc] to manage state transitions and fetch branch news data:
///
/// - **Fetching Data**: To initiate a data fetch, dispatch the `getResponse` event with the required parameters.
/// - **Resetting State**: To reset the bloc and clear any current data or errors, dispatch the `resetBloc` event.
///
/// ### Example:
///
/// ```dart
/// final branchNewsBloc = BranchNewsBloc(useCase);
///
@freezed
class ListOfChatsEvent with _$ListOfChatsEvent {
  const factory ListOfChatsEvent.getResponse(
      {required ListOfChatsParams params}) = _GetResponse;

  const factory ListOfChatsEvent.resetBloc() = _ResetBloc;

  const factory ListOfChatsEvent.addChat({
    required int userNumber,
    required String userName,
    required String message,
  }) = _AddChat;
}
