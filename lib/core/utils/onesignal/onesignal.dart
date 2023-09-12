import 'package:onesignal_flutter/onesignal_flutter.dart';

import '../dio_client/logger.dart';

const tagName = "userId";
const onesignalAppId = 'cb7e44e6-56f5-41e2-92b4-9b97463df44c';

Future<void> initOneSignal() async {
  final oneSignalShared = OneSignal.shared;

  oneSignalShared.setLogLevel(OSLogLevel.verbose, OSLogLevel.none);

  oneSignalShared.setRequiresUserPrivacyConsent(true);

  await oneSignalShared.setAppId(onesignalAppId);
}

registerOneSignalEventListener({
  required Function(OSNotificationOpenedResult) onOpened,
  required Function(OSNotificationReceivedEvent) onReceivedInForeground,
}) {
  final oneSignalShared = OneSignal.shared;

  oneSignalShared.setNotificationOpenedHandler(onOpened);

  oneSignalShared
      .setNotificationWillShowInForegroundHandler(onReceivedInForeground);
}

sendUserTag(int userId) {
  OneSignal.shared.sendTag(tagName, userId.toString()).then((res) {
    vLog("Successfully sent tags with response: $res");
  }).catchError((err) {
    vLog("Encountered an error sending tags: $err");
  });
}

deleteUserTag() {
  OneSignal.shared.deleteTag(tagName).then((res) {
    vLog("Successfully deleted tags with response: $res");
  }).catchError((err) {
    vLog("Encountered an error deleting tags: $err");
  });
}
