import 'package:bloc_clean_coding/config/colors/AppColors.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatefulWidget {
  final VoidCallback onPress;
  final String text;
  final double height;
  final double width;
  final Color backgroundColor;
  final double borderRadius;
  const RoundedButton({
    required this.onPress,
    required this.text,
    this.height = 40,
    this.width = double.infinity,
    this.backgroundColor = AppColors.buttonColor,
    this.borderRadius = 0,
    super.key,
  });

  @override
  State<RoundedButton> createState() => _RoundedButtonState();
}

class _RoundedButtonState extends State<RoundedButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPress,
      child: Container(
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
          color: widget.backgroundColor,
          borderRadius: BorderRadius.circular(widget.borderRadius),
        ),
        child: Center(
          child: Text(widget.text, style: TextStyle(color: Colors.black)),
        ),
      ),
    );
  }
}
