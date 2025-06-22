import 'package:json_annotation/json_annotation.dart';
part 'send_chat_response_model.g.dart';
@JsonSerializable()
class SendChatResponseModel {
  @JsonKey(name: "status")
  final int? status;

  SendChatResponseModel({
    this.status,
  });

  factory SendChatResponseModel.fromJson(Map<String, dynamic> json) => _$SendChatResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$SendChatResponseModelToJson(this);
}
