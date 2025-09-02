import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class WesalUserAvatarProvider {
  const WesalUserAvatarProvider({
    required this.userAvatar,
    required this.userImage,
  });

  final String userAvatar;
  final String userImage;

  /// Returns an ImageProvider that uses cached network image with fallback
  ImageProvider getImageProvider() {
    try {
      if (userImage.isNotEmpty) {
        return CachedNetworkImageProvider(userImage);
      } else {
        return AssetImage(userAvatar);
      }
    } catch (e) {
      return AssetImage(userAvatar);
    }
  }
}

// If you still want a widget version alongside the provider:
class WesalUserAvatar extends StatelessWidget {
  const WesalUserAvatar({super.key, this.userAvatar, required this.userImage});

  final String? userAvatar;
  final String userImage;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: userImage,
      fit: BoxFit.cover,
      placeholder: (context, url) => Center(child: CircularProgressIndicator()),
      errorWidget: (context, url, error) => userAvatar != null
          ? Image.asset(userAvatar!, fit: BoxFit.cover)
          : Container(),
    );
  }

  /// Get ImageProvider for use with other widgets
  ImageProvider get imageProvider {
    final provider = WesalUserAvatarProvider(
      userAvatar: userAvatar!,
      userImage: userImage,
    );
    return provider.getImageProvider();
  }
}
