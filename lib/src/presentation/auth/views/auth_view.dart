import 'package:app_esame/src/presentation/auth/widgets/social_button.dart';
import 'package:flutter/material.dart';

class AuthConnector extends StatelessWidget {
  const AuthConnector({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: ColoredBox(
              color: Color.fromARGB(255, 105, 27, 119),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Logo'),
                    Text('description'),
                    SizedBox.shrink(),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox.shrink(),
                  Column(
                    children: const [
                      Text('get started'),
                      SocialButton(),
                    ],
                  ),
                  Column(
                    children: [
                      Text('ied exam'),
                      Text('privacy policy'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
