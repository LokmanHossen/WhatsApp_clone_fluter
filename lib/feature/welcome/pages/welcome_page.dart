import 'package:flutter/material.dart';
import 'package:whats_app_clone/common/utils/colors.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Coloors.backgroundDark,
      body: Column(
        children: [
          // const SizedBox(
          //   height: 55,
          // ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                child: Image.asset(
                  'assets/images/circle.png',
                  color: Coloors.greenDark,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
              child: Column(
            children: [
              const Text(
                'Welcome to WhatsApp',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 22,
                ),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    text: 'Read our',
                    style: TextStyle(
                      color: Coloors.greyDark,
                      height: 1.5,
                    ),
                    children: [
                      TextSpan(
                        text: ' Privecy Policy',
                        style: TextStyle(color: Coloors.blueDark),
                      ),
                      TextSpan(
                        text: ' Tap " Agree and Continue " to accet the ',
                      ),
                      TextSpan(
                        text: ' Term Of Services',
                        style: TextStyle(
                          color: Coloors.blueDark,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                height: 42,
                width: MediaQuery.of(context).size.width - 100,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Coloors.greenDark,
                    foregroundColor: Coloors.backgroundDark,
                    splashFactory: NoSplash.splashFactory,
                    elevation: 0,
                    shadowColor: Colors.transparent,
                  ),
                  child: const Text('AGREE AND COTINUE'),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Material(
                color: const Color(0xFF182229),
                borderRadius: BorderRadius.circular(50),
                child: InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(20),
                  splashFactory: NoSplash.splashFactory,
                  highlightColor: const Color(0xFF09141A),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.language,
                          color: Coloors.greenDark,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'English',
                          style: TextStyle(
                            color: Coloors.greenDark,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: Coloors.greenDark,
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          )),
        ],
      ),
    );
  }
}
