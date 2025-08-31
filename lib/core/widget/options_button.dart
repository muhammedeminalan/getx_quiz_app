// core/widget/options_button.dart

import 'package:flutter/material.dart';
import 'package:quiz_app/core/extension/extension.dart';

class OptionsButton extends StatefulWidget {
  final String options;
  final String reply;
  final Color? bgColor;
  final VoidCallback onTap;

  const OptionsButton({
    super.key,
    required this.options,
    required this.reply,
    this.bgColor,
    required this.onTap,
  });

  @override
  State<OptionsButton> createState() => _OptionsButtonState();
}

class _OptionsButtonState extends State<OptionsButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scale;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: const Duration(milliseconds: 100), vsync: this, lowerBound: 0.9, upperBound: 1.0);
    _scale = _controller.drive(Tween(begin: 1.0, end: 0.95));
  }

  void _handleTap() {
    _controller.forward().then((_) {
      _controller.reverse();
      widget.onTap();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _scale,
      child: GestureDetector(
        onTap: _handleTap,
        child: Container(
          width: 350,
          height: 50,
          decoration: BoxDecoration(
            color: widget.bgColor ?? Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: context.black),
          ),
          child: Row(
            children: [
              context.w12,
              Text(
                "${widget.options} )",
                style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 24),
              ),
              context.w12,
              Text(
                widget.reply,
                style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 24),
              ),
            ],
          ),
        ),
      ),
    );
  }
}