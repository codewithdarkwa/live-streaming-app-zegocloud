import 'package:flutter/material.dart';
import 'package:live_streaming_zego_ui_kit/random_user.dart';
import 'package:zego_uikit_prebuilt_live_streaming/zego_uikit_prebuilt_live_streaming.dart';

class LivePage extends StatelessWidget {
  final String liveID;
  final bool isHost;

  const LivePage({Key? key, required this.liveID, this.isHost = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final randomUser = generateRandomUser();
    return SafeArea(
      child: ZegoUIKitPrebuiltLiveStreaming(
        appID: 103578832,// Fill in the appID that you get from ZEGOCLOUD Admin Console.
        appSign: "5ebcb004807f04c8b0897dc0cd5989ce9493cdaac1cb47183282236f7ad3ccea",// Fill in the appSign that you get from ZEGOCLOUD Admin Console.
        userID: randomUser.id,
        userName: randomUser.name,
        liveID: liveID,
        config: isHost
            ? ZegoUIKitPrebuiltLiveStreamingConfig.host()
            : ZegoUIKitPrebuiltLiveStreamingConfig.audience(),
      ),
    );
  }
}
