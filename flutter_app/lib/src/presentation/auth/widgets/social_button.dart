import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SocialButton extends StatefulWidget {
  const SocialButton({super.key});

  @override
  State<SocialButton> createState() => _SocialButtonState();
}

class _SocialButtonState extends State<SocialButton> {
  var isHovered = false;

  @override
  void signIn() async {
    try {
      await Supabase.instance.client.auth.signInWithOAuth(
        Provider.github,
        redirectTo: Uri.base.origin,
      );
    } catch (e) {
      print(e);
    }
  }

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
    );
  }
}
