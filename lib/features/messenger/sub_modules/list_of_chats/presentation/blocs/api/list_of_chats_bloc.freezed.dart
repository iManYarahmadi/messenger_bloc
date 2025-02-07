// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_of_chats_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ListOfChatsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ListOfChatsParams params) getResponse,
    required TResult Function() resetBloc,
    required TResult Function(int userNumber, String userName, String message)
        addChat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ListOfChatsParams params)? getResponse,
    TResult? Function()? resetBloc,
    TResult? Function(int userNumber, String userName, String message)? addChat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ListOfChatsParams params)? getResponse,
    TResult Function()? resetBloc,
    TResult Function(int userNumber, String userName, String message)? addChat,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetResponse value) getResponse,
    required TResult Function(_ResetBloc value) resetBloc,
    required TResult Function(_AddChat value) addChat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetResponse value)? getResponse,
    TResult? Function(_ResetBloc value)? resetBloc,
    TResult? Function(_AddChat value)? addChat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetResponse value)? getResponse,
    TResult Function(_ResetBloc value)? resetBloc,
    TResult Function(_AddChat value)? addChat,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListOfChatsEventCopyWith<$Res> {
  factory $ListOfChatsEventCopyWith(
          ListOfChatsEvent value, $Res Function(ListOfChatsEvent) then) =
      _$ListOfChatsEventCopyWithImpl<$Res, ListOfChatsEvent>;
}

/// @nodoc
class _$ListOfChatsEventCopyWithImpl<$Res, $Val extends ListOfChatsEvent>
    implements $ListOfChatsEventCopyWith<$Res> {
  _$ListOfChatsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetResponseImplCopyWith<$Res> {
  factory _$$GetResponseImplCopyWith(
          _$GetResponseImpl value, $Res Function(_$GetResponseImpl) then) =
      __$$GetResponseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ListOfChatsParams params});

  $ListOfChatsParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$GetResponseImplCopyWithImpl<$Res>
    extends _$ListOfChatsEventCopyWithImpl<$Res, _$GetResponseImpl>
    implements _$$GetResponseImplCopyWith<$Res> {
  __$$GetResponseImplCopyWithImpl(
      _$GetResponseImpl _value, $Res Function(_$GetResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$GetResponseImpl(
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as ListOfChatsParams,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ListOfChatsParamsCopyWith<$Res> get params {
    return $ListOfChatsParamsCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value));
    });
  }
}

/// @nodoc

class _$GetResponseImpl implements _GetResponse {
  const _$GetResponseImpl({required this.params});

  @override
  final ListOfChatsParams params;

  @override
  String toString() {
    return 'ListOfChatsEvent.getResponse(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetResponseImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetResponseImplCopyWith<_$GetResponseImpl> get copyWith =>
      __$$GetResponseImplCopyWithImpl<_$GetResponseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ListOfChatsParams params) getResponse,
    required TResult Function() resetBloc,
    required TResult Function(int userNumber, String userName, String message)
        addChat,
  }) {
    return getResponse(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ListOfChatsParams params)? getResponse,
    TResult? Function()? resetBloc,
    TResult? Function(int userNumber, String userName, String message)? addChat,
  }) {
    return getResponse?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ListOfChatsParams params)? getResponse,
    TResult Function()? resetBloc,
    TResult Function(int userNumber, String userName, String message)? addChat,
    required TResult orElse(),
  }) {
    if (getResponse != null) {
      return getResponse(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetResponse value) getResponse,
    required TResult Function(_ResetBloc value) resetBloc,
    required TResult Function(_AddChat value) addChat,
  }) {
    return getResponse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetResponse value)? getResponse,
    TResult? Function(_ResetBloc value)? resetBloc,
    TResult? Function(_AddChat value)? addChat,
  }) {
    return getResponse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetResponse value)? getResponse,
    TResult Function(_ResetBloc value)? resetBloc,
    TResult Function(_AddChat value)? addChat,
    required TResult orElse(),
  }) {
    if (getResponse != null) {
      return getResponse(this);
    }
    return orElse();
  }
}

abstract class _GetResponse implements ListOfChatsEvent {
  const factory _GetResponse({required final ListOfChatsParams params}) =
      _$GetResponseImpl;

  ListOfChatsParams get params;
  @JsonKey(ignore: true)
  _$$GetResponseImplCopyWith<_$GetResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetBlocImplCopyWith<$Res> {
  factory _$$ResetBlocImplCopyWith(
          _$ResetBlocImpl value, $Res Function(_$ResetBlocImpl) then) =
      __$$ResetBlocImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetBlocImplCopyWithImpl<$Res>
    extends _$ListOfChatsEventCopyWithImpl<$Res, _$ResetBlocImpl>
    implements _$$ResetBlocImplCopyWith<$Res> {
  __$$ResetBlocImplCopyWithImpl(
      _$ResetBlocImpl _value, $Res Function(_$ResetBlocImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResetBlocImpl implements _ResetBloc {
  const _$ResetBlocImpl();

  @override
  String toString() {
    return 'ListOfChatsEvent.resetBloc()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetBlocImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ListOfChatsParams params) getResponse,
    required TResult Function() resetBloc,
    required TResult Function(int userNumber, String userName, String message)
        addChat,
  }) {
    return resetBloc();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ListOfChatsParams params)? getResponse,
    TResult? Function()? resetBloc,
    TResult? Function(int userNumber, String userName, String message)? addChat,
  }) {
    return resetBloc?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ListOfChatsParams params)? getResponse,
    TResult Function()? resetBloc,
    TResult Function(int userNumber, String userName, String message)? addChat,
    required TResult orElse(),
  }) {
    if (resetBloc != null) {
      return resetBloc();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetResponse value) getResponse,
    required TResult Function(_ResetBloc value) resetBloc,
    required TResult Function(_AddChat value) addChat,
  }) {
    return resetBloc(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetResponse value)? getResponse,
    TResult? Function(_ResetBloc value)? resetBloc,
    TResult? Function(_AddChat value)? addChat,
  }) {
    return resetBloc?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetResponse value)? getResponse,
    TResult Function(_ResetBloc value)? resetBloc,
    TResult Function(_AddChat value)? addChat,
    required TResult orElse(),
  }) {
    if (resetBloc != null) {
      return resetBloc(this);
    }
    return orElse();
  }
}

abstract class _ResetBloc implements ListOfChatsEvent {
  const factory _ResetBloc() = _$ResetBlocImpl;
}

/// @nodoc
abstract class _$$AddChatImplCopyWith<$Res> {
  factory _$$AddChatImplCopyWith(
          _$AddChatImpl value, $Res Function(_$AddChatImpl) then) =
      __$$AddChatImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int userNumber, String userName, String message});
}

/// @nodoc
class __$$AddChatImplCopyWithImpl<$Res>
    extends _$ListOfChatsEventCopyWithImpl<$Res, _$AddChatImpl>
    implements _$$AddChatImplCopyWith<$Res> {
  __$$AddChatImplCopyWithImpl(
      _$AddChatImpl _value, $Res Function(_$AddChatImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userNumber = null,
    Object? userName = null,
    Object? message = null,
  }) {
    return _then(_$AddChatImpl(
      userNumber: null == userNumber
          ? _value.userNumber
          : userNumber // ignore: cast_nullable_to_non_nullable
              as int,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddChatImpl implements _AddChat {
  const _$AddChatImpl(
      {required this.userNumber,
      required this.userName,
      required this.message});

  @override
  final int userNumber;
  @override
  final String userName;
  @override
  final String message;

  @override
  String toString() {
    return 'ListOfChatsEvent.addChat(userNumber: $userNumber, userName: $userName, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddChatImpl &&
            (identical(other.userNumber, userNumber) ||
                other.userNumber == userNumber) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userNumber, userName, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddChatImplCopyWith<_$AddChatImpl> get copyWith =>
      __$$AddChatImplCopyWithImpl<_$AddChatImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ListOfChatsParams params) getResponse,
    required TResult Function() resetBloc,
    required TResult Function(int userNumber, String userName, String message)
        addChat,
  }) {
    return addChat(userNumber, userName, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ListOfChatsParams params)? getResponse,
    TResult? Function()? resetBloc,
    TResult? Function(int userNumber, String userName, String message)? addChat,
  }) {
    return addChat?.call(userNumber, userName, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ListOfChatsParams params)? getResponse,
    TResult Function()? resetBloc,
    TResult Function(int userNumber, String userName, String message)? addChat,
    required TResult orElse(),
  }) {
    if (addChat != null) {
      return addChat(userNumber, userName, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetResponse value) getResponse,
    required TResult Function(_ResetBloc value) resetBloc,
    required TResult Function(_AddChat value) addChat,
  }) {
    return addChat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetResponse value)? getResponse,
    TResult? Function(_ResetBloc value)? resetBloc,
    TResult? Function(_AddChat value)? addChat,
  }) {
    return addChat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetResponse value)? getResponse,
    TResult Function(_ResetBloc value)? resetBloc,
    TResult Function(_AddChat value)? addChat,
    required TResult orElse(),
  }) {
    if (addChat != null) {
      return addChat(this);
    }
    return orElse();
  }
}

abstract class _AddChat implements ListOfChatsEvent {
  const factory _AddChat(
      {required final int userNumber,
      required final String userName,
      required final String message}) = _$AddChatImpl;

  int get userNumber;
  String get userName;
  String get message;
  @JsonKey(ignore: true)
  _$$AddChatImplCopyWith<_$AddChatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ListOfChatsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ListOfChatsModel success) loaded,
    required TResult Function(ErrorResponseModel error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ListOfChatsModel success)? loaded,
    TResult? Function(ErrorResponseModel error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ListOfChatsModel success)? loaded,
    TResult Function(ErrorResponseModel error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListOfChatsStateCopyWith<$Res> {
  factory $ListOfChatsStateCopyWith(
          ListOfChatsState value, $Res Function(ListOfChatsState) then) =
      _$ListOfChatsStateCopyWithImpl<$Res, ListOfChatsState>;
}

/// @nodoc
class _$ListOfChatsStateCopyWithImpl<$Res, $Val extends ListOfChatsState>
    implements $ListOfChatsStateCopyWith<$Res> {
  _$ListOfChatsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ListOfChatsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ListOfChatsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ListOfChatsModel success) loaded,
    required TResult Function(ErrorResponseModel error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ListOfChatsModel success)? loaded,
    TResult? Function(ErrorResponseModel error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ListOfChatsModel success)? loaded,
    TResult Function(ErrorResponseModel error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ListOfChatsState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$ListOfChatsStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'ListOfChatsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ListOfChatsModel success) loaded,
    required TResult Function(ErrorResponseModel error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ListOfChatsModel success)? loaded,
    TResult? Function(ErrorResponseModel error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ListOfChatsModel success)? loaded,
    TResult Function(ErrorResponseModel error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ListOfChatsState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ListOfChatsModel success});

  $ListOfChatsModelCopyWith<$Res> get success;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$ListOfChatsStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
  }) {
    return _then(_$LoadedImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as ListOfChatsModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ListOfChatsModelCopyWith<$Res> get success {
    return $ListOfChatsModelCopyWith<$Res>(_value.success, (value) {
      return _then(_value.copyWith(success: value));
    });
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl({required this.success});

  @override
  final ListOfChatsModel success;

  @override
  String toString() {
    return 'ListOfChatsState.loaded(success: $success)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.success, success) || other.success == success));
  }

  @override
  int get hashCode => Object.hash(runtimeType, success);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ListOfChatsModel success) loaded,
    required TResult Function(ErrorResponseModel error) error,
  }) {
    return loaded(success);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ListOfChatsModel success)? loaded,
    TResult? Function(ErrorResponseModel error)? error,
  }) {
    return loaded?.call(success);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ListOfChatsModel success)? loaded,
    TResult Function(ErrorResponseModel error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(success);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements ListOfChatsState {
  const factory _Loaded({required final ListOfChatsModel success}) =
      _$LoadedImpl;

  ListOfChatsModel get success;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ErrorResponseModel error});

  $ErrorResponseModelCopyWith<$Res> get error;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$ListOfChatsStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorResponseModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ErrorResponseModelCopyWith<$Res> get error {
    return $ErrorResponseModelCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl({required this.error});

  @override
  final ErrorResponseModel error;

  @override
  String toString() {
    return 'ListOfChatsState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ListOfChatsModel success) loaded,
    required TResult Function(ErrorResponseModel error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ListOfChatsModel success)? loaded,
    TResult? Function(ErrorResponseModel error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ListOfChatsModel success)? loaded,
    TResult Function(ErrorResponseModel error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements ListOfChatsState {
  const factory _Error({required final ErrorResponseModel error}) = _$ErrorImpl;

  ErrorResponseModel get error;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
