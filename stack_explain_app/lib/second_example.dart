import 'package:flutter/material.dart';
import 'package:stack_explain_app/first_example.dart';

class SecondExample extends StatelessWidget {
  const SecondExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/building.jpg'),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Positioned(
            bottom: 100,
            left: 10,
            right: 10,
            child: Card(
              color: Colors.white70,
              elevation: 8.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Text(
                      "Travel With Us!",
                      style: TextStyle(
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      "Travel helps open your mind. You realize that there\'s \n no one way to live life\. Meeting people from \nother places will show you that your world view \nisn\'t the same as everyone else\'s",
                      style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FirstExample()));
              },
              child: const Text("Next"),
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                primary: Colors.yellow,
                onPrimary: Colors.black,
              ),
            ),
          )
        ],
      ),
    );
  }
}
