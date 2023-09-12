import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

import 'onesignal.dart';

setupOneSignal(int userId, BuildContext context) async {
  await initOneSignal();
  registerOneSignalEventListener(
      onOpened: (result) => onOpened(result, context),
      onReceivedInForeground: (result) =>
          onReceivedInForeground(result, context));

  promptNotificationPermission(userId);
}

void onOpened(OSNotificationOpenedResult result, BuildContext context) {
  log('NOTIFICATION OPENED HANDLER WITH: $result');
  log("opened notification: \n${result.notification.jsonRepresentation().replaceAll("\\n", "\n")}");

  // try {
  //   final data = result.notification.additionalData;
  //   if (data != null) {
  //     final chatBloc = context.read<ChatBloc>();
  //     final selectedChat = chatBloc.state.selectedChat;

  //     final chatId = (data['data']['chatId'] as int);

  //     if (chatId != selectedChat?.id) {
  //       chatBloc.add(ChatNotificationOpened(chatId));
  //       Navigator.pushNamed(context, ChatScreen.routeName);
  //     }
  //   }
  // } catch (_) {}
}

void onReceivedInForeground(
    OSNotificationReceivedEvent event, BuildContext context) {
  log("notification in foreground: \n${event.notification.jsonRepresentation().replaceAll("\\n", "\n")}");

  // try {
  //   final chatBloc = context.read<ChatBloc>();
  //   final data = event.notification.additionalData;
  //   final selectedChat = chatBloc.state.selectedChat;

  //   if (selectedChat != null && data != null) {
  //     final chatId = (data['data']['chatId'] as int);

  //     if (selectedChat.id == chatId) {
  //       event.complete(null);
  //       return;
  //     }
  //   }

  //   chatBloc.add(const ChatStarted());
  //   event.complete(event.notification);

  //   eLog(data);
  // } catch (e) {
  //   event.complete(null);
  // }
}

void promptNotificationPermission(int userId) async {
  final oneSignalShared = OneSignal.shared;

  bool userPrivacyConsent = await oneSignalShared.userProvidedPrivacyConsent();

  if (userPrivacyConsent) {
    sendUserTag(userId);
  } else {
    bool requiredConsent = await oneSignalShared.requiresUserPrivacyConsent();

    if (requiredConsent) {
      final accepted =
          await OneSignal.shared.promptUserForPushNotificationPermission();
      if (accepted) {
        await oneSignalShared.consentGranted(true);
        sendUserTag(userId);
      }
    } else {
      sendUserTag(userId);
    }
  }
}
