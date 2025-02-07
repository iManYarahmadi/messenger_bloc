// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_of_chats_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListOfChatsModelImpl _$$ListOfChatsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ListOfChatsModelImpl(
      status: (json['status'] as num?)?.toInt(),
      message: json['message'] as String? ?? '',
      chatsListModel: json['data'] == null
          ? const ChatsListModel()
          : ChatsListModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ListOfChatsModelImplToJson(
        _$ListOfChatsModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.chatsListModel,
    };

_$ChatsListModelImpl _$$ChatsListModelImplFromJson(Map<String, dynamic> json) =>
    _$ChatsListModelImpl(
      chats: (json['chats'] as List<dynamic>?)
          ?.map((e) => Chat.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ChatsListModelImplToJson(
        _$ChatsListModelImpl instance) =>
    <String, dynamic>{
      'chats': instance.chats,
    };

_$ChatImpl _$$ChatImplFromJson(Map<String, dynamic> json) => _$ChatImpl(
      userNumber: (json['userNumber'] as num?)?.toInt() ?? 0,
      userName: json['userName'] as String? ?? '',
      userMessage: (json['userMessage'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      phoneNumber: json['phone_number'] as String? ?? '',
    );

Map<String, dynamic> _$$ChatImplToJson(_$ChatImpl instance) =>
    <String, dynamic>{
      'userNumber': instance.userNumber,
      'userName': instance.userName,
      'userMessage': instance.userMessage,
      'phone_number': instance.phoneNumber,
    };
