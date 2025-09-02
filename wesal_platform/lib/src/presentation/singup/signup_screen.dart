import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wesal/src/di/di_init.dart';
import 'package:wesal/src/presentation/singup/bloc/register_bloc.dart';
import 'package:wesal/src/presentation/singup/pages/add_images_page.dart';
import 'package:wesal/src/presentation/singup/pages/avatar_page.dart';
import 'package:wesal/src/presentation/singup/pages/education_page.dart';
import 'package:wesal/src/presentation/singup/pages/gender_page.dart';
import 'package:wesal/src/presentation/singup/pages/hobbies_page.dart';
import 'package:wesal/src/presentation/singup/pages/name_date_page.dart';
import 'package:wesal/src/presentation/singup/widgets/register_app_bar.dart';
import 'package:wesal_ui_system/components/keep_alive_widget.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController userNameFieldController = TextEditingController();
  final _pageController = PageController(initialPage: 0);
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => diContainer<RegisterBloc>(),
      child: BlocListener<RegisterBloc, RegisterState>(
        listenWhen: (previous, current) =>
            previous.stepIndex != current.stepIndex,
        listener: (context, state) {
          if (_pageController.hasClients) {
            _pageController.animateToPage(
              state.stepIndex,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeIn,
            );
          }
        },
        child: Scaffold(
          appBar: RegisterAppBar(),
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.white,
          body: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Expanded(
                  child: PageView(
                    physics: NeverScrollableScrollPhysics(),
                    controller: _pageController,
                    children: [
                      KeepAlivePage(child: NameDatePage()),
                      KeepAlivePage(child: GenderPage()),
                      KeepAlivePage(child: AddImagesPage()),
                      KeepAlivePage(child: AvatarPage()),
                      KeepAlivePage(child: HobbiesPage()),
                      KeepAlivePage(child: EducationPage()),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
