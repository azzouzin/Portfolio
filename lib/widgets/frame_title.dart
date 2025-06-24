import 'package:dileepabandara_dev/theme/responsive_screen_provider.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class FrameTitle extends StatelessWidget {
  const FrameTitle({
    Key? key,
    required this.title,
    required this.description,
    this.animation = "coding",
  }) : super(key: key);

  final String title;
  final String description;
  final String animation;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SelectableText(
                title,
                style: Theme.of(context).textTheme.displaySmall,
              ),
              // Lottie.asset('assets/icons/$animation.json',
              //   height: 100.0, width: 150.0),
            ],
          ),
          Padding(
            padding: ResponsiveScreenProvider.isDesktopScreen(context)
                ? const EdgeInsets.only(
                    left: 160.0, right: 160.0, top: 10.0, bottom: 40.0)
                : EdgeInsets.zero,
            child: SelectableText(
              description,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
        ],
      ),
    );
  }
}
