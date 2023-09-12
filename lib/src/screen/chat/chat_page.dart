import 'package:animation_wrappers/animation_wrappers.dart';

import 'package:flutter/material.dart';

import '../../../core/theme/theme.dart';
import '../../../core/utils/utils.dart';
import '../../widgets/widgets.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ChatWidget();
  }
}

class ChatWidget extends StatefulWidget {
  const ChatWidget({super.key});

  @override
  State<ChatWidget> createState() => _ChatWidgetState();
}

class _ChatWidgetState extends State<ChatWidget> {
  final TextEditingController _messageController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(144.0),
          child: CustomAppBar(
            leading: IconButton(
              icon: const Hero(
                tag: 'arrow',
                child: Icon(Icons.keyboard_arrow_down),
              ),
              onPressed: () => Navigator.pop(context),
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(0.0),
              child: Hero(
                tag: 'Delivery Boy',
                child: Container(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: ListTile(
                    leading: Image.asset(
                      'assets/images/other/user.png',
                      scale: 2.5,
                      height: 42.3,
                      width: 33.7,
                    ),
                    title: Text(
                      'Samantha Smith',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .copyWith(fontSize: 13.3, letterSpacing: 0.07),
                    ),
                    subtitle: Text(
                      'June 20, 11:35 am',
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(fontSize: 11.7, letterSpacing: 0.06),
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.phone, color: dujisMainColor),
                      onPressed: () {
                        /*.......*/
                      },
                    ),
                  ),
                ),
              ),
            ),
          )),
      body: FadedSlideAnimation(
        beginOffset: const Offset(0, 0.3),
        endOffset: const Offset(0, 0),
        slideCurve: Curves.linearToEaseOut,
        child: DecoratedBox(
          position: DecorationPosition.background,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/other/chat_bg.png'),
                fit: BoxFit.fill),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              const MessageStream(),
              Container(
                color: Theme.of(context).scaffoldBackgroundColor,
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: EntryField(
                  controller: _messageController,
                  hint: AppLocalizations.of(context)!.enterMessage,
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.send,
                      color: dujisMainColor,
                    ),
                    onPressed: () {
                      _messageController.clear();
                    },
                  ),
                  border: InputBorder.none,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class MessageStream extends StatelessWidget {
  const MessageStream({super.key});

  @override
  Widget build(BuildContext context) {
    List<MessageBubble> messageBubbles = [
      MessageBubble(
        sender: 'user',
        text: AppLocalizations.of(context)!.heyThere,
        time: '11:58 am',
        isDelivered: false,
        isMe: true,
      ),
      MessageBubble(
        sender: 'delivery_partner',
        text: AppLocalizations.of(context)!.onMyWay,
        time: '11:59 am',
        isDelivered: false,
        isMe: false,
      ),
    ];
    return Expanded(
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: messageBubbles,
      ),
    );
  }
}

class MessageBubble extends StatelessWidget {
  final bool? isMe;
  final String? text;
  final String? sender;
  final String? time;
  final bool? isDelivered;

  const MessageBubble(
      {super.key,
      this.sender,
      this.text,
      this.time,
      this.isMe,
      this.isDelivered});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment:
            isMe! ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: <Widget>[
          Material(
            elevation: 4.0,
            color: isMe!
                ? dujisMainColor
                : Theme.of(context).scaffoldBackgroundColor,
            borderRadius: BorderRadius.circular(6.0),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
              child: Column(
                crossAxisAlignment:
                    isMe! ? CrossAxisAlignment.end : CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    text!,
                    style: isMe!
                        ? bottomBarTextStyle
                        : Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(fontSize: 15.0),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        time!,
                        style: TextStyle(
                          fontSize: 10.0,
                          color: isMe!
                              ? dujisWhiteColor.withOpacity(0.75)
                              : dujisLightTextColor,
                        ),
                      ),
                      isMe!
                          ? Icon(
                              Icons.check_circle,
                              color: isDelivered!
                                  ? Colors.blue
                                  : dujisDisabledColor,
                              size: 12.0,
                            )
                          : const SizedBox.shrink(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
