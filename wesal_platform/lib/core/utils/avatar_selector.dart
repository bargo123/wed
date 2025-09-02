import 'package:wesal/gen/assets.gen.dart';

class AvatarSelector {
  static String getAvatarByName(String avatar) {
    switch (avatar) {
      case "avatar1":
        return Assets.images.avatar1.path;
      case "avatar2":
        return Assets.images.avatar2.path;
      case "avatar3":
        return Assets.images.avatar3.keyName;
      case "avatar4":
        return Assets.images.avatar4.keyName;
      case "avatar5":
        return Assets.images.avatar5.keyName;
      case "avatar6":
        return Assets.images.avatar6.path;
      case "avatar7":
        return Assets.images.avatar7.keyName;
      default:
        return Assets.images.avatar1.keyName;
    }
  }
}
