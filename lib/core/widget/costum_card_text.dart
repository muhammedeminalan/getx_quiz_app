import 'package:flutter/material.dart';
import 'package:quiz_app/core/extension/extension.dart';

class CostumCardText extends StatelessWidget {
  const CostumCardText({super.key, required this.bgColor, required this.text});
  final Color bgColor;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: bgColor,
      ),
      alignment: Alignment.center,
      child: Text(
        text,
        style: Theme.of(
          context,
        ).textTheme.titleLarge!.copyWith(fontSize: 24, color: context.white),
      ),
    );
  }
}
