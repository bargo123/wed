import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wesal/l10n/gen/wesal_localization.gen.dart';

import 'package:wesal/src/presentation/singup/bloc/register_bloc.dart';
import 'package:wesal/src/presentation/widgets/images_selector/image_holder.dart';
import 'package:wesal_ui_system/components/wesal_button.dart';
import 'package:wesal_ui_system/theme/wesal_theme.dart';
import 'package:wesal_ui_system/typography/text_style.dart';
import 'package:wesal_ui_system/typography/wesal_text.dart';

class AddImagesPage extends StatelessWidget {
  const AddImagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final WesalLocalization l10n = WesalLocalization.of(context);
    final theme = WesalTheme.of(context);
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          WesalText(
            l10n.add_your_images,
            textColor: theme.colors.gray1,
            style: WesalTextStyles.header20Bold,
          ),

          SizedBox(height: 10),
          Center(
            child: Wrap(
              runSpacing: 20,
              children: [
                for (int index = 0; index < 6; index++)
                  Padding(
                    padding: const EdgeInsets.all(4),
                    child: BlocBuilder<RegisterBloc, RegisterState>(
                      builder: (context, state) {
                        return ImageHolder(
                          addImageCallBack: (image) {
                            context.read<RegisterBloc>().add(
                              RegisterEvent.addImage(image),
                            );
                          },
                          deleteImageCallBack: (image) {
                            context.read<RegisterBloc>().add(
                              RegisterEvent.removeImage(image),
                            );
                          },
                          onMainImageSelected: (mainImage) {
                            context.read<RegisterBloc>().add(
                              RegisterEvent.setMainImage(mainImage),
                            );
                          },
                        );
                      },
                    ),
                  ),
              ],
            ),
          ),
          Spacer(),

          // Skip button
          Center(
            child: TextButton(
              onPressed: () {
                context.read<RegisterBloc>().add(
                  const RegisterEvent.shouldSkipAddingImage(true),
                );
                context.read<RegisterBloc>().add(
                  const RegisterEvent.nextStep(),
                );
              },
              child: WesalText(
                l10n.skip_for_now,
                textColor: theme.colors.gray2,
                style: WesalTextStyles.semiBold14,
              ),
            ),
          ),

          SizedBox(height: 12),

          BlocBuilder<RegisterBloc, RegisterState>(
            buildWhen: (previous, current) =>
                previous.isImagesButtonEnabled != current.isImagesButtonEnabled,
            builder: (context, state) {
              return WesalButton(
                buttonLabel: l10n.continue_text,
                labelColor: theme.colors.whiteColor,
                buttonCallBack: () {
                  if (state.isImagesButtonEnabled) {
                    context.read<RegisterBloc>().add(
                      const RegisterEvent.shouldSkipAddingImage(false),
                    );
                    context.read<RegisterBloc>().add(
                      const RegisterEvent.nextStep(),
                    );
                  }
                },
                buttonColor: state.isImagesButtonEnabled
                    ? theme.colors.appPrimaryColor
                    : theme.colors.gray3,
              );
            },
          ),
        ],
      ),
    );
  }
}
