import 'package:json_annotation/json_annotation.dart';
part 'chat_details_response_model.g.dart';
@JsonSerializable()
class ChatDetailsResponseModel {
  @JsonKey(name: "data")
  final Data? data;

  ChatDetailsResponseModel({
    this.data,
  });

  factory ChatDetailsResponseModel.fromJson(Map<String, dynamic> json) => _$ChatDetailsResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$ChatDetailsResponseModelToJson(this);
}

@JsonSerializable()
class Data {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "sender")
  final Sender? sender;
  @JsonKey(name: "conversation")
  final List<Conversation>? conversation;
  @JsonKey(name: "unread")
  final int? unread;
  @JsonKey(name: "last_message")
  final LastMessage? lastMessage;
  @JsonKey(name: "last_msg_time")
  final DateTime? lastMsgTime;

  Data({
    this.id,
    this.sender,
    this.conversation,
    this.unread,
    this.lastMessage,
    this.lastMsgTime,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class Conversation {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "sender")
  final Sender? sender;
  @JsonKey(name: "message")
  final String? message;
  @JsonKey(name: "type")
  final String? type;
  @JsonKey(name: "is_read")
  final bool? isRead;
  @JsonKey(name: "sent_time")
  final String? sentTime;
  @JsonKey(name: "readable_time")
  final String? readableTime;

  Conversation({
    this.id,
    this.sender,
    this.message,
    this.type,
    this.isRead,
    this.sentTime,
    this.readableTime,
  });

  factory Conversation.fromJson(Map<String, dynamic> json) => _$ConversationFromJson(json);

  Map<String, dynamic> toJson() => _$ConversationToJson(this);
}

@JsonSerializable()
class Sender {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "name")
  final String? name;
  @JsonKey(name: "image")
  final String? image;

  Sender({
    this.id,
    this.name,
    this.image,
  });

  factory Sender.fromJson(Map<String, dynamic> json) => _$SenderFromJson(json);

  Map<String, dynamic> toJson() => _$SenderToJson(this);
}

@JsonSerializable()
class LastMessage {
  @JsonKey(name: "message")
  final String? message;
  @JsonKey(name: "readable_time")
  final String? readableTime;

  LastMessage({
    this.message,
    this.readableTime,
  });

  factory LastMessage.fromJson(Map<String, dynamic> json) => _$LastMessageFromJson(json);

  Map<String, dynamic> toJson() => _$LastMessageToJson(this);
}
