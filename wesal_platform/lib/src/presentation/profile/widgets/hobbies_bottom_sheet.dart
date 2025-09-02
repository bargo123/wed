import 'package:flutter/material.dart';
import 'package:wesal/src/presentation/widgets/wesal_hobbies_builder/hobbies_selection_widget.dart';

class HobbiesBottomSheet extends StatefulWidget {
  const HobbiesBottomSheet({super.key, required this.selectedHobbies});
  final List<String> selectedHobbies;

  @override
  State<HobbiesBottomSheet> createState() => _HobbiesBottomSheetState();
}

class _HobbiesBottomSheetState extends State<HobbiesBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return HobbiesSelectionWidget(
      onHobbyAdded: (hobbie) {},
      onHobbyRemoved: (hobbie) {},
    );
  }
}
