import 'package:easy_todo_app/data/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LargeButton extends StatelessWidget {
  const LargeButton(
      {required this.text,
      required this.onPressed,
      required this.primary,
      super.key});
  final String text;
  final Function() onPressed;
  final bool primary;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      width: double.infinity,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: primary ? AppColors.primary : AppColors.disable,
        ),
        child: Text(
          text,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
