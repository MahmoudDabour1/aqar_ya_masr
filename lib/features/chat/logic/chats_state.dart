import 'package:aqar_ya_masr/features/chat/data/models/chat_details_response_model.dart';
import 'package:aqar_ya_masr/features/chat/data/models/chat_response_model.dart';
import 'package:aqar_ya_masr/features/chat/data/models/send_chat_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chats_state.freezed.dart';

@freezed
class ChatsState<T> with _$ChatsState<T> {
  const factory ChatsState.initial() = ChatsInitial;

  const factory ChatsState.sendMessageLoading() = SendChatsLoading;

  const factory ChatsState.sendMessageSuccess(
      SendChatResponseModel sendChatResponseModel) = SendChatsSuccess<T>;

  const factory ChatsState.sendMessageFailure(String error) = SendChatsFailure;

  const factory ChatsState.getMessageLoading() = GetChatsLoading;

  const factory ChatsState.getMessageSuccess(
      ChatResponseModel chatResponseModel) = GetChatsSuccess<T>;

  const factory ChatsState.getMessageFailure(String error) = GetChatsFailure;
const factory ChatsState.getChatDetailsLoading() = GetChatsDetailsLoading;

  const factory ChatsState.getChatDetailsSuccess(
      ChatDetailsResponseModel  chatDetailsResponseModel) = GetChatsDetailsSuccess<T>;

  const factory ChatsState.getChatDetailsFailure(String error) = GetChatsDetailsFailure;
}
