import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wesal/l10n/gen/wesal_localization.gen.dart';
import 'package:wesal/src/presentation/profile/bloc/profile_bloc.dart';
import 'package:wesal/src/presentation/widgets/images_selector/image_holder.dart';
import 'package:wesal_ui_system/wesal_ui_system.dart';

class PhotosSection extends StatelessWidget {
  const PhotosSection({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = WesalLocalization.of(context);
    final theme = WesalTheme.of(context);
    return Padding(
      padding: const EdgeInsets.all(18),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WesalText(
              l10n.my_photos,
              textColor: theme.colors.blackColor,
              style: WesalTextStyles.header20Bold,
            ),
            const SizedBox(height: 10),
            BlocBuilder<ProfileBloc, ProfileState>(
              buildWhen: (previous, current) =>
                  previous.currentUser?.images.length !=
                  current.currentUser?.images.length,
              builder: (context, state) {
                return Wrap(
                  spacing: 10,

                  runSpacing: 20,
                  children: [
                    for (int index = 0; index < 6; index++)
                      ImageHolder(
                        isFromNetwork: true,
                        urlImage:
                            index < (state.currentUser?.images.length ?? 0)
                            ? state.currentUser!.images[index]
                            : null,
                        addImageCallBack: (image) {
                          context.read<ProfileBloc>().add(
                            ProfileEvent.addPhoto(image),
                          );
                        },
                        deleteImageCallBack: (image) {
                          context.read<ProfileBloc>().add(
                            ProfileEvent.deletePhoto(image),
                          );
                        },
                        onMainImageSelected: (mainImage) {
                          context.read<ProfileBloc>().add(
                            ProfileEvent.setMainPhoto(mainImage),
                          );
                        },
                      ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
