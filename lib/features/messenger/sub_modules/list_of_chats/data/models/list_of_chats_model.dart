import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_of_chats_model.freezed.dart';
part 'list_of_chats_model.g.dart';

/// [ListOfChatsModel] : A data model representing the response structure for a list of chats.
///
/// This model is used to deserialize API responses containing chat information.
/// It utilizes the `freezed` package for immutability and automatic JSON serialization.
///
/// ### Fields:
///
/// - [status] : An optional integer indicating the response status.
/// - [message] : A string message from the API, with a default empty value.
/// - [chatsListModel] : An instance of [ChatsListModel] containing the list of chats, defaulting to an empty model.
///
/// ### JSON Serialization:
///
/// - Uses `@JsonKey` annotations to map JSON fields to Dart properties.
/// - Supports serialization and deserialization via `fromJson`.
///
/// ### Usage:
///
/// This model is primarily used to parse chat-related API responses. It ensures type safety
/// and provides a structured representation of the retrieved data.
///
@freezed
class ListOfChatsModel with _$ListOfChatsModel {
  const factory ListOfChatsModel({
    // ignore: invalid_annotation_target
    @JsonKey(name: 'status') int? status,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'message') @Default('') String message,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'data') @Default(ChatsListModel()) ChatsListModel chatsListModel,
  }) = _ListOfChatsModel;

  factory ListOfChatsModel.fromJson(Map<String, dynamic> json) => _$ListOfChatsModelFromJson(json);
}
/// [ChatsListModel] : A data model representing a list of chat entries.
///
/// This model is used to deserialize the `chats` field from the API response.
/// It leverages the `freezed` package for immutability and automatic JSON serialization.
///
/// ### Fields:
///
/// - `chats` : A list of [Chat] objects representing individual chat entries. This field is optional.
///
/// ### JSON Serialization:
///
/// - Uses `@JsonKey` to map the `chats` field from JSON.
/// - Supports serialization and deserialization via `fromJson`.
///
/// ### Usage:
///
/// This model is used as a nested structure inside [ListOfChatsModel] to manage chat lists in a structured manner.
///
@freezed
class ChatsListModel with _$ChatsListModel {
  const factory ChatsListModel({
    // ignore: invalid_annotation_target
    @JsonKey(name: 'chats') List<Chat>? chats,
  }) = _ChatsListModel;

  factory ChatsListModel.fromJson(Map<String, dynamic> json) => _$ChatsListModelFromJson(json);
}
/// [Chat] : A data model representing an individual chat entry.
///
/// This model is used to deserialize a single chat object from the API response.
/// It leverages the `freezed` package for immutability and automatic JSON serialization.
///
/// ### Fields:
///
/// - [userNumber] : An integer representing the unique identifier of the user. Defaults to `0`.
/// - [userName] : A string containing the user's name. Defaults to an empty string.
/// - [userMessage] : A list of strings representing the messages sent by the user. Defaults to an empty list.
/// - [phoneNumber] : A string representing the user's phone number. Defaults to an empty string.
///
/// ### JSON Serialization:
///
/// - Uses `@JsonKey` annotations to map JSON fields to Dart properties.
/// - Supports serialization and deserialization via `fromJson`.
///
/// ### Usage:
///
/// This model is used inside [ChatsListModel] to represent individual chat entries in a structured format.
///
@freezed
class Chat with _$Chat {
  const factory Chat({
    // ignore: invalid_annotation_target
    @JsonKey(name: 'userNumber') @Default(0) int userNumber,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'userName') @Default('') String userName,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'userMessage') @Default([]) List<String> userMessage,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'phone_number') @Default('') String phoneNumber,
  }) = _Chat;

  factory Chat.fromJson(Map<String, dynamic> json) => _$ChatFromJson(json);
}

