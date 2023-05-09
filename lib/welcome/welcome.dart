import 'package:flutter/material.dart';
import 'package:musica/home/home.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> with SingleTickerProviderStateMixin {

  late TabController _controller;
  late int _index;

  @override
  void initState() {
    super.initState();
    _controller = new TabController(length: 4, vsync: this);
    _index = 0;
  }


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: TabBarView(
          controller: _controller,
          children: [
            HomePage(),
            Center(
              child: Text('LINEUP'),
            ),
            Center(
              child: Text('BOLETOS'),
            ),
            Center(
              child: Text('AREAS'),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _index,
          onTap: (v){
            setState(() {
              _index = v;
              _controller.index = v;
            });
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Inicio'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.speaker),
              label: 'LINEUP'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_activity),
              label: 'BOLETOS'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.location_on_sharp),
              label: 'AREAS',
              
            ),
          ],
        ),
      ),
    );
  }
}