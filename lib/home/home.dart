import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverAppBar(
          title: Text('home'),
        ),
        SliverToBoxAdapter(
          child: Container(
            height: 150,
            decoration: BoxDecoration(
              
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  child: Image.asset(
                    'assets/img/NAVE1.png',
                    height: 150,
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Image.asset(
                    'assets/img/NAVE2.png',
                    height: 150,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  left: 0,
                  child: Center(
                    child: Image.asset(
                      'assets/img/ALIEN.png',
                      height: 100,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: SafeArea(
            child: Center(child: Text('home'))
          ),
        )
      ],
    );
  }
}