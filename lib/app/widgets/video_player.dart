import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:video_player/video_player.dart';

/// https://pub.dev/packages/video_player
/// https://docs.flutter.dev/cookbook/plugins/play-video
class VideoPlayerView extends HookWidget {
  const VideoPlayerView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = useMemoized(() => VideoPlayerController.networkUrl(Uri.parse(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4')));
    final initialized = useState(false);
    final isPlaying = useState(false);

    useEffect(() {
      controller.initialize().then((_) {
        initialized.value = true;
        isPlaying.value = controller.value.isPlaying;
      });
      controller.addListener(() {
        isPlaying.value = controller.value.isPlaying;
      });

      return controller.dispose;
    }, [controller]);

    return Scaffold(
      appBar: AppBar(
        title: Text('Video Player View'),
      ),
      body: Center(
        child: controller.value.isInitialized

            /// https://api.flutter.dev/flutter/widgets/AspectRatio-class.html
            /// https://www.youtube.com/watch?v=XcnP3_mO_Ms
            ? AspectRatio(
                aspectRatio: controller.value.aspectRatio,
                child: VideoPlayer(controller),
              )
            : CircularProgressIndicator(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.value.isPlaying ? controller.pause() : controller.play();
        },
        child: Icon(
          isPlaying.value ? Icons.pause : Icons.play_arrow,
        ),
      ),
    );
  }
}
