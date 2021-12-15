import 'package:flutter/material.dart';

class FirstExample extends StatelessWidget {
  const FirstExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              color: Colors.blue,
              width: size.width,
              height: size.height,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                color: Colors.pink,
                width: size.width * 0.5,
                height: size.height * 0.5,
              ),
            ),
            Positioned(
              bottom: 20,
              right: 20,
              child: Container(
                color: Colors.amber,
                width: size.width * 0.3,
                height: size.height * 0.3,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                width: size.width * 0.5,
                height: size.width * 0.5,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
