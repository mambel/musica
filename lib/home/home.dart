import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SafeArea(
            child: Container(
              height: 150,
              decoration: const BoxDecoration(),
              child: Stack(
                children: [
                  Positioned(
                    bottom: 10,
                    left: 10,
                    right: 10,
                    child: Image.asset(
                      'assets/img/grande.png',
                      height: 75,
                    ).animate(
                    onComplete: (controller) => controller.repeat(reverse: true),
                  ).move(
                    duration: Duration(seconds: 8)
                  ),
                  ),
                  Positioned(
                    top: 10,
                    left: 10,
                    child: Image.asset(
                      'assets/img/Nube 002.png',
                      height: 75,
                    ).animate(
                      onComplete: (controller) => controller.repeat(reverse: true),
                    ).move(
                      duration: Duration(seconds: 12)
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 10,
                    child: Image.asset(
                      'assets/img/Nube 003.png',
                      height: 60,
                    ).animate(
                    onComplete: (controller) => controller.repeat(reverse: true),
                  ).move(
                    duration: Duration(seconds: 13)
                  ),
                  ),
                  Positioned(
                    top: 30,
                    left: 10,
                    right: 10,
                    child: Image.asset(
                      'assets/img/Nube 001.png',
                      height: 30,
                    ),
                  ),
                  Positioned(
                    top: 5,
                    left: 5,
                    child: Image.asset(
                      'assets/img/NAVE1.png',
                      height: 150,
                    ).animate(
                    onComplete: (controller) => controller.repeat(reverse: true),
                  ).move(
                    begin: Offset(-2, -2),
                    end: Offset(2, 2),
                    duration: Duration(seconds: 3)
                  ),
                  ),
                  Positioned(
                    top: 5,
                    right: 5,
                    child: Image.asset(
                      'assets/img/NAVE2.png',
                      height: 150,
                    ).animate(
                    onComplete: (controller) => controller.repeat(reverse: true),
                  ).move(
                    begin: Offset(2, 2),
                    end: Offset(-2, -4),
                    duration: Duration(seconds: 4)
                  ),
                  ),
                  Positioned(
                    bottom: 5,
                    right: 5,
                    left: 5,
                    child: Center(
                      child: Image.asset(
                        'assets/img/ALIEN.png',
                        height: 85,
                      ).animate(
                        autoPlay: true,
                        onComplete: (controller) => controller.repeat(reverse: true),
                        effects: [
                          ScaleEffect(
                            begin: Offset(1,1),
                            duration: Duration(seconds: 3),
                          )
                        ],
          
                      ).slide(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/img/logo.png',
            ).animate(
              autoPlay: true,
              onComplete: (controller) => controller.repeat(reverse: true),
            ).move(duration: 600.ms),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.only(top: 40),
          sliver: SliverToBoxAdapter(
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: TextStyle(
                  color: Colors.blue[200],
                  fontWeight: FontWeight.bold,
                  fontSize: 22,

                ),
                children: [
                  TextSpan(text: 'RECINTO FERIAL TAMPICO'),
                  TextSpan(text: '\n'),
                  TextSpan(text: '22 DE JULIO - 14 HRS'),
                ]
              ),
            ).animate(
              onComplete: (controller) => controller.repeat(reverse: true)
            ).move(delay: 300.ms, duration: 600.ms),
          ),
        )
      ],
    );
  }
}