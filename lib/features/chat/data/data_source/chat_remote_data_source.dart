import 'package:aqar_ya_masr/features/chat/data/models/chat_details_response_model.dart';
import 'package:aqar_ya_masr/features/chat/data/models/chat_response_model.dart';
import 'package:aqar_ya_masr/features/chat/data/models/send_chat_request_model.dart';
import 'package:aqar_ya_masr/features/chat/data/models/send_chat_response_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

import '../../../../core/networking/api_constants.dart';

part 'chat_remote_data_source.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ChatRemoteDataSource {
  factory ChatRemoteDataSource(Dio dio, {String baseUrl}) =
      _ChatRemoteDataSource;

  @GET(ApiConstants.getChatsEP)
  Future<ChatResponseModel> getChatMessages();

  @POST(ApiConstants.sendChatsEP)
  Future<SendChatResponseModel> sendMessage({
    @Body() SendChatRequestModel? sendChatRequestModel,
  });

  @GET(ApiConstants.chatDetailsEP)
  Future<ChatDetailsResponseModel> getChatDetails(
    @Path("chatId") int chatId,
  );
}
