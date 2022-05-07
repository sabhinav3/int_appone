import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:int_appone/video/video_player_widget.dart';
import 'package:video_player/video_player.dart';

class AssetPlayerWidget extends StatefulWidget {
  AssetPlayerWidget({Key? key}) : super(key: key);

  @override
  State<AssetPlayerWidget> createState() => _AssetPlayerWidgetState();
}

class _AssetPlayerWidgetState extends State<AssetPlayerWidget> {
  final asset = 'assets/video/sozo_logo.mp4';
  late VideoPlayerController controller;

  @override
  void initState() {
    super.initState();
    controller = VideoPlayerController.asset(asset)
      ..addListener(() => setState(() {}))
      ..setLooping(true)
      ..initialize().then((_) => controller.play());
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return VideoPlayerWidget(controller: controller);
  }
}
