import 'package:flutter/material.dart';

import '../widgets/card_home_screen.dart';
import '../widgets/app_drawer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return  Scaffold(
        appBar: AppBar(),
        drawer: AppDrawer(),
        body: Column(
          children: [
            Container(
              height: size.height / 7,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 28),
                    child: Text(
                      'ATTENDANCE',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, bottom: 9),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'LECTURES',
                          style: TextStyle(color: Colors.white70),
                        ),
                        Text(
                          'TUTORIALS',
                          style: TextStyle(color: Colors.white70),
                        ),
                        Text(
                          'PRACTICALS',
                          style: TextStyle(color: Colors.white70),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    // Color.fromRGBO(253,185,83,1),
                    // Color.fromRGBO(255,138,0,1),
                    Color(0xFFE57157),
                    Color(0xFFE9547F),
                    // Color.fromRGBO(253,193,104,1),
                    //       Color.fromRGBO(251,128,128,1),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 7,
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (ctx, i) => CardHomeScreen(),
                itemCount: 7,
              ),
            ),
          ],
        ),
     
    );
  }
}
