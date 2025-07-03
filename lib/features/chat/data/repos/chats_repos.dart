import 'package:aqar_ya_masr/core/networking/api_error_handler.dart';
import 'package:aqar_ya_masr/core/networking/api_result.dart';
import 'package:aqar_ya_masr/features/chat/data/models/chat_details_response_model.dart';
import 'package:aqar_ya_masr/features/chat/data/models/chat_response_model.dart';
import 'package:aqar_ya_masr/features/chat/data/models/send_chat_request_model.dart';
import 'package:aqar_ya_masr/features/chat/data/models/send_chat_response_model.dart';

import '../data_source/chat_remote_data_source.dart';

abstract class ChatsRepos {
  Future<ApiResult<SendChatResponseModel>> sendMessage(
      SendChatRequestModel sendChatRequestModel);

  Future<ApiResult<ChatResponseModel>> getChatMessages();

  Future<ApiResult<ChatDetailsResponseModel>> getChatDetails(int chatId);
}

class ChatsReposImpl implements ChatsRepos {
  final ChatRemoteDataSource chatRemoteDataSource;

  ChatsReposImpl(this.chatRemoteDataSource);

  @override
  Future<ApiResult<SendChatResponseModel>> sendMessage(
      SendChatRequestModel sendChatRequestModel) async {
    try {
      final response = await chatRemoteDataSource.sendMessage(
          sendChatRequestModel: sendChatRequestModel);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e.toString()));
    }
  }

  @override
  Future<ApiResult<ChatResponseModel>> getChatMessages() async {
    try {
      final response = await chatRemoteDataSource.getChatMessages();
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e.toString()));
    }
  }

  @override
  Future<ApiResult<ChatDetailsResponseModel>> getChatDetails(int chatId) async {
    try {
      final response = await chatRemoteDataSource.getChatDetails(chatId);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e.toString()));
    }
  }
}
