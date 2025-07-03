import 'package:aqar_ya_masr/core/extensions/navigation_extension.dart';
import 'package:aqar_ya_masr/core/routing/routes.dart';
import 'package:aqar_ya_masr/features/chat/data/models/chat_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_styles.dart';
import '../../../../core/utils/spacing.dart';

class ChatContainerSingleItem extends StatelessWidget {
  final ChatResponseModel? chatResponseModel;
  final int index;

  const ChatContainerSingleItem(
      {super.key, this.chatResponseModel, required this.index});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(Routes.chatScreen,
            arguments: chatResponseModel?.data?[index].id);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
              radius: 35.r,
              backgroundImage:
                  AssetImage('assets/images/user_placeholder.png')),
          horizontalSpace(16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                chatResponseModel?.data?[index].sender?.name ?? "dddd",
                style: AppStyles.font18BlackBold,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                chatResponseModel?.data?[index].lastMessage?.message ?? "",
                style: AppStyles.font16grayRegular,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
          Spacer(),
          Text(
            chatResponseModel?.data?[index].lastMsgTime ?? "00:00",
            style: AppStyles.font16grayRegular,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
