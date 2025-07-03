import 'package:aqar_ya_masr/core/theming/app_styles.dart';
import 'package:aqar_ya_masr/core/utils/spacing.dart';
import 'package:aqar_ya_masr/core/widgets/app_custom_app_bar.dart';
import 'package:aqar_ya_masr/core/widgets/app_custom_search_text_field.dart';
import 'package:aqar_ya_masr/features/chat/logic/chats_cubit.dart';
import 'package:aqar_ya_masr/features/chat/presentation/widgets/chat_container_single_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../logic/chats_state.dart';

class ChatDefaultScreen extends StatefulWidget {
  const ChatDefaultScreen({super.key});

  @override
  State<ChatDefaultScreen> createState() => _ChatDefaultScreenState();
}

class _ChatDefaultScreenState extends State<ChatDefaultScreen> {
  @override
  void initState() {
    super.initState();
    context.read<ChatsCubit>().getChatMessages();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppCustomAppBar(
        appBatTitle: "الرسائل",
        isHaveBackButton: false,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppCustomSearchTextField(),
            verticalSpace(16),


            BlocBuilder<ChatsCubit, ChatsState>(
              buildWhen: (previous, current) {
                return current is GetChatsLoading ||
                    current is GetChatsSuccess ||
                    current is GetChatsFailure;
              },
              builder: (context, state) {
                return state.maybeWhen(
                    getMessageLoading: () => Center(
                          child: CircularProgressIndicator(),
                        ),
                    getMessageSuccess: (chats) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          " رسائلي:${chats.data?.length??0}",
                          style: AppStyles.font18BlackBold,
                        ),
                        verticalSpace(16),
                        ListView.separated(
                          separatorBuilder: (context, index) =>
                              verticalSpace(8),
                          itemCount: chats.data?.length??0,
                          shrinkWrap: true,
                          physics: BouncingScrollPhysics(),
                          itemBuilder: (context, index) {
                            return ChatContainerSingleItem(
                              chatResponseModel: chats,
                              index: index,
                            );
                          },
                        ),
                      ],
                    ),
                    getMessageFailure: (error) => Center(
                          child: Text(
                            error,
                            style: AppStyles.font18PrimaryMedium,
                          ),
                        ),
                    orElse: () => SizedBox.shrink());
              },
            ),
          ],
        ),
      ),
    );
  }
}
