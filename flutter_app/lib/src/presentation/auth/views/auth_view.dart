import 'package:app_esame/src/core/constants.dart';
import 'package:app_esame/src/presentation/auth/widgets/social_button.dart';
import 'package:app_esame/src/presentation/auth/widgets/social_button2.dart';
import 'package:flutter/material.dart';

class AuthConnector extends StatefulWidget {
  const AuthConnector({super.key});

  @override
  State<AuthConnector> createState() => _AuthConnectorState();
}

class _AuthConnectorState extends State<AuthConnector> {
  @override
  void initState() {
    ifUserExists(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/sfondo.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Color.fromARGB(255, 0, 0, 0).withOpacity(1.0)
                    ],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/logo.png',
                        width: 120.0,
                        height: 60.0,
                      ),
                      const Text(
                        'Planning your next trip will be a breeze.',
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255,
                                255), // Imposta il colore del testo
                            fontSize: 16.0,
                            fontFamily:
                                'Montserrat' // Puoi anche regolare la dimensione del testo
                            ),
                      ),
                      const SizedBox.shrink(),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Color.fromARGB(
                  255, 14, 14, 14), // Imposta il colore di sfondo a nero
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox.shrink(),
                    Column(
                      children: [
                        const Text(
                          'Get started!',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Expanded(
                              child: SocialButton(),
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Expanded(
                              child: SocialButton2(),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: const [
                        Text(
                          'ied exam',
                          style: TextStyle(
                              color: Colors.white, fontFamily: 'Montserrat'),
                        ),
                        Text(
                          'privacy policy',
                          style: TextStyle(
                              color: Colors.white, fontFamily: 'Montserrat'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
