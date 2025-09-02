import 'package:flutter/material.dart';
import 'package:wesal/gen/assets.gen.dart';
import 'package:wesal_ui_system/components/wesal_user_avatar.dart';
import 'package:wesal_ui_system/theme/wesal_theme.dart';
import 'package:wesal_ui_system/typography/text_style.dart';
import 'package:wesal_ui_system/typography/wesal_text.dart';

class ProfileImages extends StatelessWidget {
  const ProfileImages({super.key, required this.images});
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        images.isEmpty ? _buildEmptyState() : _buildImageGrid(context),
        const SizedBox(height: 200),
      ],
    );
  }

  Widget _buildEmptyState() {
    return Column(
      children: [
        const Divider(),
        const SizedBox(height: 70),
        Assets.images.noImagesIc.svg(height: 70, width: 70),
        const SizedBox(height: 10),
        WesalText("No images available", style: WesalTextStyles.bold16),
      ],
    );
  }

  Widget _buildImageGrid(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 16),

        Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                color: WesalTheme.of(context).colors.styleRed,
                width: 3,
              ),
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
            ),
            itemCount: images.length,
            itemBuilder: (context, index) {
              if (index >= images.length) {
                return const SizedBox.shrink();
              }
              return WesalUserAvatar(userImage: images[index]);
            },
          ),
        ),
      ],
    );
  }
}
