import 'package:flutter/material.dart';

class SocialButton2 extends StatefulWidget {
  const SocialButton2({super.key});

  @override
  State<SocialButton2> createState() => _SocialButtonState();
}

class _SocialButtonState extends State<SocialButton2> {
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
      child: Expanded(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeInOut,
          height: 56,
          width: 240,
          decoration: BoxDecoration(
            color: isHovered
                ? Color.fromARGB(255, 139, 139, 139)
                : Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Center(
            child: Text(
              'continue',
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 16.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
