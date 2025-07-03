import 'package:aqar_ya_masr/core/extensions/navigation_extension.dart';
import 'package:aqar_ya_masr/core/helpers/shared_pref_helper.dart';
import 'package:aqar_ya_masr/core/helpers/shared_pref_keys.dart';
import 'package:aqar_ya_masr/core/theming/app_colors.dart';
import 'package:aqar_ya_masr/core/utils/spacing.dart';
import 'package:aqar_ya_masr/core/widgets/app_text_form_field.dart';
import 'package:aqar_ya_masr/features/chat/logic/chats_cubit.dart';
import 'package:aqar_ya_masr/features/chat/logic/chats_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/theming/app_styles.dart';
import '../data/models/send_chat_request_model.dart';

class ChatScreen extends StatefulWidget {
  final int chatId;

  const ChatScreen({super.key, required this.chatId});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _controller = TextEditingController();

  String? userName;
  String? userAvatar;
  int? userId;
  int? getMyId;

  @override
  void initState() {
    super.initState();
    context.read<ChatsCubit>().getChatDetails(widget.chatId);
    _fetchMyId();
  }

  _fetchMyId()async{
    final myId = await SharedPrefHelper.getInt(SharedPrefKeys.userId);
    if (myId != null) {
      getMyId = myId;
    }
  }

  void _sendMessage() {
    final text = _controller.text.trim();
    if (text.isEmpty || userId == null) return;

    context.read<ChatsCubit>().sendMessage(
      SendChatRequestModel(
        message: text,
        fromUid: getMyId.toString(),
        msgType: 'text',
        to: userId.toString(),
      ),
    );

    _controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20.r,
              backgroundImage: (userAvatar != null && userAvatar!.isNotEmpty)
                  ? NetworkImage(userAvatar!)
                  : AssetImage("assets/images/user_placeholder.png"),
              child: (userAvatar == null || userAvatar!.isEmpty)
                  ? Icon(Icons.person, size: 20.r)
                  : null,
            ),
            horizontalSpace(8),
            Expanded(
              child: Text(
                userName ?? '',
                style: AppStyles.font18BlackMedium,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () => context.pop(),
            icon: Icon(Icons.arrow_forward_rounded, size: 28.r),
          ),
        ],

      ),
      body: Column(
        children: [
          Expanded(
            child: BlocConsumer<ChatsCubit, ChatsState>(
              listenWhen: (previous, current) =>
              current is SendChatsSuccess,
              listener: (context, state) {
                if (state is SendChatsSuccess) {
                  context.read<ChatsCubit>().getChatDetails(widget.chatId);
                }
              },
              buildWhen: (previous, current) =>
              current is GetChatsDetailsLoading ||
                  current is GetChatsDetailsSuccess ||
                  current is GetChatsDetailsFailure,
              builder: (context, state) {
                return state.maybeWhen(
                  getChatDetailsLoading: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  getChatDetailsSuccess: (chat) {
                    userName = chat.data?.sender?.name;
                    userAvatar = chat.data?.sender?.image;
                    userId = chat.data?.sender?.id;

                    final messages = chat.data?.conversation ?? [];

                    return ListView.builder(
                      reverse: true,
                      padding: const EdgeInsets.all(8),
                      itemCount: messages.length,
                      itemBuilder: (context, index) {
                        final message = messages[messages.length - 1 - index];
                        final isMe = message.sender?.id == userId;
                        return Align(
                          alignment: isMe
                              ? Alignment.centerRight
                              : Alignment.centerLeft,
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            margin: const EdgeInsets.symmetric(vertical: 4),
                            decoration: BoxDecoration(
                              color: isMe
                                  ? AppColors.primaryColor
                                  : Colors.grey[300],
                              borderRadius: BorderRadius.circular(8.r),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  message.message ?? '',
                                  style: AppStyles.font16whiteMedium.copyWith(
                                    color: isMe
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                                verticalSpace(6),
                                Text(
                                  message.sentTime ?? '',
                                  style: TextStyle(
                                    fontSize: 10.sp,
                                    color: isMe
                                        ? AppColors.grayColor
                                        : Colors.black54,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  getChatDetailsFailure: (error) => Center(
                    child: Text("حدث خطأ: $error"),
                  ),
                  orElse: () => const SizedBox.shrink(),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.r),
            child: Row(
              children: [
                GestureDetector(
                  onTap: _sendMessage,
                  child: Container(
                    width: 45.w,
                    height: 45.h,
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset("assets/images/chat_send.svg"),
                    ),
                  ),
                ),
                horizontalSpace(8),
                Expanded(
                  child: AppTextFormField(
                    labelText: "اكتب رسالتك",
                    onFieldSubmitted: (value){
                      _sendMessage();
                    },
                    validator: (value) {},
                    controller: _controller,

                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset("assets/images/attachment.svg"),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

