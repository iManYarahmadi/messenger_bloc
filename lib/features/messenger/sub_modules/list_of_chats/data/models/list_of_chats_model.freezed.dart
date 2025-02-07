// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_of_chats_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ListOfChatsModel _$ListOfChatsModelFromJson(Map<String, dynamic> json) {
  return _ListOfChatsModel.fromJson(json);
}

/// @nodoc
mixin _$ListOfChatsModel {
// ignore: invalid_annotation_target
  @JsonKey(name: 'status')
  int? get status =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'message')
  String get message =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'data')
  ChatsListModel get chatsListModel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListOfChatsModelCopyWith<ListOfChatsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListOfChatsModelCopyWith<$Res> {
  factory $ListOfChatsModelCopyWith(
          ListOfChatsModel value, $Res Function(ListOfChatsModel) then) =
      _$ListOfChatsModelCopyWithImpl<$Res, ListOfChatsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') int? status,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'data') ChatsListModel chatsListModel});

  $ChatsListModelCopyWith<$Res> get chatsListModel;
}

/// @nodoc
class _$ListOfChatsModelCopyWithImpl<$Res, $Val extends ListOfChatsModel>
    implements $ListOfChatsModelCopyWith<$Res> {
  _$ListOfChatsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = null,
    Object? chatsListModel = null,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      chatsListModel: null == chatsListModel
          ? _value.chatsListModel
          : chatsListModel // ignore: cast_nullable_to_non_nullable
              as ChatsListModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ChatsListModelCopyWith<$Res> get chatsListModel {
    return $ChatsListModelCopyWith<$Res>(_value.chatsListModel, (value) {
      return _then(_value.copyWith(chatsListModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ListOfChatsModelImplCopyWith<$Res>
    implements $ListOfChatsModelCopyWith<$Res> {
  factory _$$ListOfChatsModelImplCopyWith(_$ListOfChatsModelImpl value,
          $Res Function(_$ListOfChatsModelImpl) then) =
      __$$ListOfChatsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') int? status,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'data') ChatsListModel chatsListModel});

  @override
  $ChatsListModelCopyWith<$Res> get chatsListModel;
}

/// @nodoc
class __$$ListOfChatsModelImplCopyWithImpl<$Res>
    extends _$ListOfChatsModelCopyWithImpl<$Res, _$ListOfChatsModelImpl>
    implements _$$ListOfChatsModelImplCopyWith<$Res> {
  __$$ListOfChatsModelImplCopyWithImpl(_$ListOfChatsModelImpl _value,
      $Res Function(_$ListOfChatsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = null,
    Object? chatsListModel = null,
  }) {
    return _then(_$ListOfChatsModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      chatsListModel: null == chatsListModel
          ? _value.chatsListModel
          : chatsListModel // ignore: cast_nullable_to_non_nullable
              as ChatsListModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ListOfChatsModelImpl implements _ListOfChatsModel {
  const _$ListOfChatsModelImpl(
      {@JsonKey(name: 'status') this.status,
      @JsonKey(name: 'message') this.message = '',
      @JsonKey(name: 'data') this.chatsListModel = const ChatsListModel()});

  factory _$ListOfChatsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListOfChatsModelImplFromJson(json);

// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'status')
  final int? status;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'message')
  final String message;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'data')
  final ChatsListModel chatsListModel;

  @override
  String toString() {
    return 'ListOfChatsModel(status: $status, message: $message, chatsListModel: $chatsListModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListOfChatsModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.chatsListModel, chatsListModel) ||
                other.chatsListModel == chatsListModel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, chatsListModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListOfChatsModelImplCopyWith<_$ListOfChatsModelImpl> get copyWith =>
      __$$ListOfChatsModelImplCopyWithImpl<_$ListOfChatsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListOfChatsModelImplToJson(
      this,
    );
  }
}

abstract class _ListOfChatsModel implements ListOfChatsModel {
  const factory _ListOfChatsModel(
          {@JsonKey(name: 'status') final int? status,
          @JsonKey(name: 'message') final String message,
          @JsonKey(name: 'data') final ChatsListModel chatsListModel}) =
      _$ListOfChatsModelImpl;

  factory _ListOfChatsModel.fromJson(Map<String, dynamic> json) =
      _$ListOfChatsModelImpl.fromJson;

  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'status')
  int? get status;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'message')
  String get message;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'data')
  ChatsListModel get chatsListModel;
  @override
  @JsonKey(ignore: true)
  _$$ListOfChatsModelImplCopyWith<_$ListOfChatsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChatsListModel _$ChatsListModelFromJson(Map<String, dynamic> json) {
  return _ChatsListModel.fromJson(json);
}

/// @nodoc
mixin _$ChatsListModel {
// ignore: invalid_annotation_target
  @JsonKey(name: 'chats')
  List<Chat>? get chats => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatsListModelCopyWith<ChatsListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatsListModelCopyWith<$Res> {
  factory $ChatsListModelCopyWith(
          ChatsListModel value, $Res Function(ChatsListModel) then) =
      _$ChatsListModelCopyWithImpl<$Res, ChatsListModel>;
  @useResult
  $Res call({@JsonKey(name: 'chats') List<Chat>? chats});
}

/// @nodoc
class _$ChatsListModelCopyWithImpl<$Res, $Val extends ChatsListModel>
    implements $ChatsListModelCopyWith<$Res> {
  _$ChatsListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chats = freezed,
  }) {
    return _then(_value.copyWith(
      chats: freezed == chats
          ? _value.chats
          : chats // ignore: cast_nullable_to_non_nullable
              as List<Chat>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatsListModelImplCopyWith<$Res>
    implements $ChatsListModelCopyWith<$Res> {
  factory _$$ChatsListModelImplCopyWith(_$ChatsListModelImpl value,
          $Res Function(_$ChatsListModelImpl) then) =
      __$$ChatsListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'chats') List<Chat>? chats});
}

/// @nodoc
class __$$ChatsListModelImplCopyWithImpl<$Res>
    extends _$ChatsListModelCopyWithImpl<$Res, _$ChatsListModelImpl>
    implements _$$ChatsListModelImplCopyWith<$Res> {
  __$$ChatsListModelImplCopyWithImpl(
      _$ChatsListModelImpl _value, $Res Function(_$ChatsListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chats = freezed,
  }) {
    return _then(_$ChatsListModelImpl(
      chats: freezed == chats
          ? _value._chats
          : chats // ignore: cast_nullable_to_non_nullable
              as List<Chat>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatsListModelImpl implements _ChatsListModel {
  const _$ChatsListModelImpl({@JsonKey(name: 'chats') final List<Chat>? chats})
      : _chats = chats;

  factory _$ChatsListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatsListModelImplFromJson(json);

// ignore: invalid_annotation_target
  final List<Chat>? _chats;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'chats')
  List<Chat>? get chats {
    final value = _chats;
    if (value == null) return null;
    if (_chats is EqualUnmodifiableListView) return _chats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ChatsListModel(chats: $chats)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatsListModelImpl &&
            const DeepCollectionEquality().equals(other._chats, _chats));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_chats));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatsListModelImplCopyWith<_$ChatsListModelImpl> get copyWith =>
      __$$ChatsListModelImplCopyWithImpl<_$ChatsListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatsListModelImplToJson(
      this,
    );
  }
}

abstract class _ChatsListModel implements ChatsListModel {
  const factory _ChatsListModel(
      {@JsonKey(name: 'chats') final List<Chat>? chats}) = _$ChatsListModelImpl;

  factory _ChatsListModel.fromJson(Map<String, dynamic> json) =
      _$ChatsListModelImpl.fromJson;

  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'chats')
  List<Chat>? get chats;
  @override
  @JsonKey(ignore: true)
  _$$ChatsListModelImplCopyWith<_$ChatsListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Chat _$ChatFromJson(Map<String, dynamic> json) {
  return _Chat.fromJson(json);
}

/// @nodoc
mixin _$Chat {
// ignore: invalid_annotation_target
  @JsonKey(name: 'userNumber')
  int get userNumber =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'userName')
  String get userName =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'userMessage')
  List<String> get userMessage =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'phone_number')
  String get phoneNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatCopyWith<Chat> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatCopyWith<$Res> {
  factory $ChatCopyWith(Chat value, $Res Function(Chat) then) =
      _$ChatCopyWithImpl<$Res, Chat>;
  @useResult
  $Res call(
      {@JsonKey(name: 'userNumber') int userNumber,
      @JsonKey(name: 'userName') String userName,
      @JsonKey(name: 'userMessage') List<String> userMessage,
      @JsonKey(name: 'phone_number') String phoneNumber});
}

/// @nodoc
class _$ChatCopyWithImpl<$Res, $Val extends Chat>
    implements $ChatCopyWith<$Res> {
  _$ChatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userNumber = null,
    Object? userName = null,
    Object? userMessage = null,
    Object? phoneNumber = null,
  }) {
    return _then(_value.copyWith(
      userNumber: null == userNumber
          ? _value.userNumber
          : userNumber // ignore: cast_nullable_to_non_nullable
              as int,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userMessage: null == userMessage
          ? _value.userMessage
          : userMessage // ignore: cast_nullable_to_non_nullable
              as List<String>,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatImplCopyWith<$Res> implements $ChatCopyWith<$Res> {
  factory _$$ChatImplCopyWith(
          _$ChatImpl value, $Res Function(_$ChatImpl) then) =
      __$$ChatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'userNumber') int userNumber,
      @JsonKey(name: 'userName') String userName,
      @JsonKey(name: 'userMessage') List<String> userMessage,
      @JsonKey(name: 'phone_number') String phoneNumber});
}

/// @nodoc
class __$$ChatImplCopyWithImpl<$Res>
    extends _$ChatCopyWithImpl<$Res, _$ChatImpl>
    implements _$$ChatImplCopyWith<$Res> {
  __$$ChatImplCopyWithImpl(_$ChatImpl _value, $Res Function(_$ChatImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userNumber = null,
    Object? userName = null,
    Object? userMessage = null,
    Object? phoneNumber = null,
  }) {
    return _then(_$ChatImpl(
      userNumber: null == userNumber
          ? _value.userNumber
          : userNumber // ignore: cast_nullable_to_non_nullable
              as int,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userMessage: null == userMessage
          ? _value._userMessage
          : userMessage // ignore: cast_nullable_to_non_nullable
              as List<String>,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatImpl implements _Chat {
  const _$ChatImpl(
      {@JsonKey(name: 'userNumber') this.userNumber = 0,
      @JsonKey(name: 'userName') this.userName = '',
      @JsonKey(name: 'userMessage') final List<String> userMessage = const [],
      @JsonKey(name: 'phone_number') this.phoneNumber = ''})
      : _userMessage = userMessage;

  factory _$ChatImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatImplFromJson(json);

// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'userNumber')
  final int userNumber;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'userName')
  final String userName;
// ignore: invalid_annotation_target
  final List<String> _userMessage;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'userMessage')
  List<String> get userMessage {
    if (_userMessage is EqualUnmodifiableListView) return _userMessage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userMessage);
  }

// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'phone_number')
  final String phoneNumber;

  @override
  String toString() {
    return 'Chat(userNumber: $userNumber, userName: $userName, userMessage: $userMessage, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatImpl &&
            (identical(other.userNumber, userNumber) ||
                other.userNumber == userNumber) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            const DeepCollectionEquality()
                .equals(other._userMessage, _userMessage) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userNumber, userName,
      const DeepCollectionEquality().hash(_userMessage), phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatImplCopyWith<_$ChatImpl> get copyWith =>
      __$$ChatImplCopyWithImpl<_$ChatImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatImplToJson(
      this,
    );
  }
}

abstract class _Chat implements Chat {
  const factory _Chat(
      {@JsonKey(name: 'userNumber') final int userNumber,
      @JsonKey(name: 'userName') final String userName,
      @JsonKey(name: 'userMessage') final List<String> userMessage,
      @JsonKey(name: 'phone_number') final String phoneNumber}) = _$ChatImpl;

  factory _Chat.fromJson(Map<String, dynamic> json) = _$ChatImpl.fromJson;

  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'userNumber')
  int get userNumber;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'userName')
  String get userName;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'userMessage')
  List<String> get userMessage;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'phone_number')
  String get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$$ChatImplCopyWith<_$ChatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
