import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wesal/l10n/gen/wesal_localization.gen.dart';
import 'package:wesal/src/presentation/singup/bloc/register_bloc.dart';
import 'package:wesal_ui_system/components/wesal_button.dart';
import 'package:wesal_ui_system/theme/wesal_theme.dart';
import 'package:wesal_ui_system/typography/text_style.dart';
import 'package:wesal_ui_system/typography/wesal_text.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = WesalTheme.of(context);
    final l10n = WesalLocalization.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Stack(
        children: [
          // Main content
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              WesalText(
                l10n.selecte_your_avatar,
                textColor: theme.colors.gray1,
                style: WesalTextStyles.header20Bold,
              ),
              SizedBox(height: 10),
              Expanded(
                child: BlocBuilder<RegisterBloc, RegisterState>(
                  buildWhen: (previous, current) =>
                      previous.selectedAvatar != current.selectedAvatar,
                  builder: (context, state) {
                    return GridView.builder(
                      padding: EdgeInsets.only(bottom: 100), // Space for button
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        childAspectRatio: 0.75,
                        mainAxisSpacing: 20,
                      ),
                      itemCount: 7,
                      itemBuilder: (context, index) {
                        String avatar = "avatar${index + 1}";
                        return InkWell(
                          onTap: () {
                            context.read<RegisterBloc>().add(
                              RegisterEvent.addAvatar(avatar),
                            );
                          },
                          child: Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      "assets/images/$avatar.jpg",
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: state.selectedAvatar == avatar
                                      ? Colors.transparent.withValues(
                                          alpha: 0.5,
                                        )
                                      : null,
                                  // color: Colors.red,
                                  border: state.selectedAvatar == avatar
                                      ? Border.all(
                                          color: theme.colors.appPrimaryColor,
                                          width: 4,
                                        )
                                      : null,
                                ),
                                height: double.infinity,
                                width: double.infinity,
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
          // Floating button at the bottom
          Positioned(
            left: 0,
            right: 0,
            bottom: 10,
            child: BlocBuilder<RegisterBloc, RegisterState>(
              builder: (context, state) {
                return WesalButton(
                  buttonLabel: l10n.continue_text,
                  labelColor: theme.colors.whiteColor,
                  buttonCallBack: () {
                    context.read<RegisterBloc>().add(
                      const RegisterEvent.nextStep(),
                    );
                  },
                  buttonColor: state.isGenderButtonEnabled
                      ? theme.colors.appPrimaryColor
                      : theme.colors.gray3,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
