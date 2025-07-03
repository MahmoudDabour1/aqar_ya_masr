import 'package:aqar_ya_masr/features/chat/data/models/send_chat_request_model.dart';
import 'package:bloc/bloc.dart';

import '../data/repos/chats_repos.dart';
import 'chats_state.dart';

class ChatsCubit extends Cubit<ChatsState> {
  final ChatsRepos chatsRepos;

  ChatsCubit(this.chatsRepos) : super(ChatsState.initial());

  Future<void> sendMessage(
    SendChatRequestModel sendChatRequestModel,
  ) async {
    emit(ChatsState.sendMessageLoading());
    final response = await chatsRepos.sendMessage(SendChatRequestModel(
      message: sendChatRequestModel.message,
      fromUid: sendChatRequestModel.fromUid,
      to: sendChatRequestModel.to,
      msgType: sendChatRequestModel.msgType,
    ));
    response.when(
      success: (data) {
        emit(ChatsState.sendMessageSuccess(data));
        getChatDetails(int.parse(sendChatRequestModel.to??"0"));
      },
      failure: (e) {
        emit(ChatsState.sendMessageFailure(e.message ?? ""));
      },
    );
  }

  Future<void> getChatMessages() async {
    emit(ChatsState.getMessageLoading());
    final response = await chatsRepos.getChatMessages();
    response.when(
      success: (data) {
        emit(ChatsState.getMessageSuccess(data));
      },
      failure: (e) {
        emit(ChatsState.getMessageFailure(e.message ?? ""));
      },
    );
  }

  Future<void> getChatDetails(int chatId) async {
    emit(ChatsState.getChatDetailsLoading());
    final response = await chatsRepos.getChatDetails(chatId);
    response.when(
      success: (data) {
        emit(ChatsState.getChatDetailsSuccess(data));
      },
      failure: (e) {
        emit(ChatsState.getChatDetailsFailure(e.message ?? ""));
      },
    );
  }
}
