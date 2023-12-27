import 'package:flutter/material.dart';
import 'package:whats_app_clone/common/extension/custom_theme_extension.dart';
import 'package:whats_app_clone/common/utils/colors.dart';
import 'package:whats_app_clone/common/widgets/custom_icon_button.dart';

class ChatTextField extends StatefulWidget {
  const ChatTextField({super.key, required this.receiverId});
  final String receiverId;

  @override
  State<ChatTextField> createState() => _ChatTextFieldState();
}

class _ChatTextFieldState extends State<ChatTextField> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  late TextEditingController messageController;

  bool isMessageIconEnabled = false;

  @override
  void initState() {
    messageController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              controller: messageController,
              maxLines: 4,
              minLines: 1,
              autofocus: true,
              onChanged: (value) {
                value.isEmpty
                    ? setState(() => isMessageIconEnabled = false)
                    : setState(() => isMessageIconEnabled = true);
              },
              decoration: InputDecoration(
                  hintText: 'Type message',
                  hintStyle: TextStyle(color: context.theme.greyColor),
                  filled: true,
                  fillColor: context.theme.chatTextFieldBg,
                  isDense: true,
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      style: BorderStyle.none,
                      width: 0,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  prefixIcon: Material(
                    color: Colors.transparent,
                    child: CustomIconButton(
                      onTap: () {},
                      icon: Icons.emoji_emotions_outlined,
                    ),
                  ),
                  suffixIcon: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      RotatedBox(
                        quarterTurns: 45,
                        child: CustomIconButton(
                          onTap: () {},
                          icon: Icons.attach_file,
                        ),
                      ),
                      CustomIconButton(
                        onTap: () {},
                        icon: Icons.camera_alt_outlined,
                      ),
                    ],
                  )),
            ),
          ),
          const SizedBox(width: 5),
          CustomIconButton(
            onTap: () {},
            icon: isMessageIconEnabled
                ? Icons.send_outlined
                : Icons.mic_none_outlined,
            background: Coloors.greenDark,
            iconColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
