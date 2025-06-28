import 'package:ecommerce_app/common/custom_shapes/containers/circular_container.dart';
import 'package:flutter/material.dart';

class AppChipChoiceColor extends StatelessWidget {
  const AppChipChoiceColor({
    super.key,
    required this.color,
    required this.isSelected,
    this.onSelected,
  });

  final Color color;
  final bool isSelected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label: SizedBox(),
      selected: isSelected,
      labelStyle: TextStyle(color: isSelected ? Colors.white : null),
      onSelected: onSelected,
      padding: const EdgeInsets.all(0),
      labelPadding: const EdgeInsets.all(0),
      shape: CircleBorder(),
      avatar: CircularContainer(
        width: 50,
        height: 50,
        backgroundColor: color,
      ),
      selectedColor: color,
      backgroundColor: color,
    );
  }
}

class AppChipChoiceSize extends StatelessWidget {
  const AppChipChoiceSize({
    super.key,
    required this.text,
    required this.isSelected,
    this.onSelected,
  });

  final String text;
  final bool isSelected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: Text(text),
        selected: isSelected,
        labelStyle: TextStyle(color: isSelected ? Colors.white : null),
        onSelected: onSelected,
      ),
    );
  }
}
