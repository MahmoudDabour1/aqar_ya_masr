// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_details_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatDetailsResponseModel _$ChatDetailsResponseModelFromJson(
        Map<String, dynamic> json) =>
    ChatDetailsResponseModel(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChatDetailsResponseModelToJson(
        ChatDetailsResponseModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      id: (json['id'] as num?)?.toInt(),
      sender: json['sender'] == null
          ? null
          : Sender.fromJson(json['sender'] as Map<String, dynamic>),
      conversation: (json['conversation'] as List<dynamic>?)
          ?.map((e) => Conversation.fromJson(e as Map<String, dynamic>))
          .toList(),
      unread: (json['unread'] as num?)?.toInt(),
      lastMessage: json['last_message'] == null
          ? null
          : LastMessage.fromJson(json['last_message'] as Map<String, dynamic>),
      lastMsgTime: json['last_msg_time'] == null
          ? null
          : DateTime.parse(json['last_msg_time'] as String),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'id': instance.id,
      'sender': instance.sender,
      'conversation': instance.conversation,
      'unread': instance.unread,
      'last_message': instance.lastMessage,
      'last_msg_time': instance.lastMsgTime?.toIso8601String(),
    };

Conversation _$ConversationFromJson(Map<String, dynamic> json) => Conversation(
      id: (json['id'] as num?)?.toInt(),
      sender: json['sender'] == null
          ? null
          : Sender.fromJson(json['sender'] as Map<String, dynamic>),
      message: json['message'] as String?,
      type: json['type'] as String?,
      isRead: json['is_read'] as bool?,
      sentTime: json['sent_time'] as String?,
      readableTime: json['readable_time'] as String?,
    );

Map<String, dynamic> _$ConversationToJson(Conversation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sender': instance.sender,
      'message': instance.message,
      'type': instance.type,
      'is_read': instance.isRead,
      'sent_time': instance.sentTime,
      'readable_time': instance.readableTime,
    };

Sender _$SenderFromJson(Map<String, dynamic> json) => Sender(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$SenderToJson(Sender instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
    };

LastMessage _$LastMessageFromJson(Map<String, dynamic> json) => LastMessage(
      message: json['message'] as String?,
      readableTime: json['readable_time'] as String?,
    );

Map<String, dynamic> _$LastMessageToJson(LastMessage instance) =>
    <String, dynamic>{
      'message': instance.message,
      'readable_time': instance.readableTime,
    };
