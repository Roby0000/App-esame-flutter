import 'package:flutter/material.dart';

class SocialButton extends StatefulWidget {
  const SocialButton({super.key});

  @override
  State<SocialButton> createState() => _SocialButtonState();
}

class _SocialButtonState extends State<SocialButton> {
  var isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          isHovered = false;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeInOut,
        height: 56,
        decoration: BoxDecoration(
          color: isHovered
              ? Color.fromARGB(255, 79, 6, 110)
              : Color.fromARGB(255, 187, 0, 255),
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Center(
          child: Text('continue'),
        ),
      ),
    );
  }
}
