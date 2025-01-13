import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:video_player/video_player.dart';

/// https://pub.dev/packages/video_player
/// https://docs.flutter.dev/cookbook/plugins/play-video
class VideoPlayerWidget extends HookWidget {
  const VideoPlayerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = useMemoized(() => VideoPlayerController.networkUrl(Uri.parse(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4')));
    final initialized = useState(false);
    useEffect(() {
      controller.initialize().then((_) {
        initialized.value = true;
      });

      return controller.dispose;
    }, [controller]);

    return Scaffold(
      body: Center(
        child: controller.value.isInitialized
            ? AspectRatio(
                aspectRatio: controller.value.aspectRatio,
                child: VideoPlayer(controller),
              )
            : Container(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.value.isPlaying ? controller.pause() : controller.play();
        },
        child: Icon(
          controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),
    );
  }
}
