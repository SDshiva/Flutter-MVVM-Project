import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    super.key,
    this.isLoading = true,
    required this.title,
    required this.onPressed,
    this.width = 50,
    this.height = 30,
  });

  final bool isLoading;
  final String title;
  final double width, height;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
