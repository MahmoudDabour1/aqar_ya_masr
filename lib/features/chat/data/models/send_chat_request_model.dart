class SendChatRequestModel {
  final String message;
  final String? msgType;
  final String? to;
  final String? fromUid;

  SendChatRequestModel(
      {required this.message,
      required this.msgType,
      required this.to,
      required this.fromUid});

  Map<String, dynamic> toJson() {
    return {
      'message': message,
      'msg_type': msgType,
      'to': to,
      'from_uid': fromUid,
    };
  }

  factory SendChatRequestModel.fromJson(Map<String, dynamic> json) {
    return SendChatRequestModel(
      message: json['message'] as String,
      msgType: json['msg_type'] as String?,
      to: json['to'] as String?,
      fromUid: json['from_uid'] as String?,
    );
  }
}
