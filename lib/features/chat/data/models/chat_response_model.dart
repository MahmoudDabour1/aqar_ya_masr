import 'package:json_annotation/json_annotation.dart';
part 'chat_response_model.g.dart';
@JsonSerializable()
class ChatResponseModel {
  @JsonKey(name: "data")
  final List<Datum>? data;

  ChatResponseModel({
    this.data,
  });

  factory ChatResponseModel.fromJson(Map<String, dynamic> json) => _$ChatResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$ChatResponseModelToJson(this);
}

@JsonSerializable()
class Datum {
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "sender")
  final Sender? sender;
  @JsonKey(name: "unread")
  final int? unread;
  @JsonKey(name: "last_message")
  final LastMessage? lastMessage;
  @JsonKey(name: "last_msg_time")
  final DateTime? lastMsgTime;

  Datum({
    this.id,
    this.sender,
    this.unread,
    this.lastMessage,
    this.lastMsgTime,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  Map<String, dynamic> toJson() => _$DatumToJson(this);
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
