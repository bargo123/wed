import 'package:flutter/material.dart';
import 'package:wesal_ui_system/wesal_ui_system.dart';

class HobbiesInterestsContainer<T> extends StatefulWidget {
  const HobbiesInterestsContainer({
    super.key,
    required this.hobbieModel,
    this.onRemove,
    this.onAdd,
    required this.isSelectable,
    this.isSelected,
    this.stopSelection = false,
    this.selectedColor,
    this.borderColor,
  });

  final T hobbieModel;
  final bool isSelectable;
  final Function(String)? onRemove;
  final Function(String)? onAdd;
  final bool? isSelected;
  final bool? stopSelection;
  final Color? selectedColor;
  final Color? borderColor;

  @override
  State<HobbiesInterestsContainer> createState() =>
      _HobbiesInterestsContainerState();
}

class _HobbiesInterestsContainerState extends State<HobbiesInterestsContainer> {
  bool isSelected = false;

  @override
  void initState() {
    super.initState();
    // Initialize with the model's isSelected value
    isSelected = widget.hobbieModel.isSelected ?? false;
  }

  @override
  void didUpdateWidget(HobbiesInterestsContainer oldWidget) {
    super.didUpdateWidget(oldWidget);
    // Update local state if the widget's hobbieModel.isSelected changes
    if (widget.hobbieModel.isSelected != oldWidget.hobbieModel.isSelected) {
      setState(() {
        isSelected = widget.hobbieModel.isSelected ?? false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = WesalTheme.of(context);
    return InkWell(
      onTap: () {
        if (!widget.isSelectable) {
          return;
        }

        if (widget.stopSelection! && !isSelected) {
          return;
        }

        setState(() {
          isSelected = !isSelected;
        });

        if (isSelected) {
          widget.onAdd!(widget.hobbieModel.key);
        } else {
          widget.onRemove!(widget.hobbieModel.key);
        }
      },
      child: Container(
        decoration: BoxDecoration(
          color: isSelected
              ? widget.selectedColor ?? theme.colors.appSecondaryColor
              : theme.colors.whiteColor,
          borderRadius: BorderRadius.circular(15),
          border: widget.isSelectable
              ? Border.all(
                  color: widget.borderColor ?? theme.colors.appPrimaryColor,
                )
              : null,
        ),
        padding: EdgeInsets.only(top: 6, bottom: 6, right: 10, left: 10),
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: WesalText(widget.hobbieModel.hobbie),
        ),
      ),
    );
  }
}
