import 'package:flutter/material.dart';
import 'package:wesal/gen/assets.gen.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(width: 8),
          Assets.images.loveBg.image(scale: 10),
        ],
      ),
    );
  }
}
