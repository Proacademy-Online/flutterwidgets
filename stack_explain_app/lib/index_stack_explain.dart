import 'package:flutter/material.dart';

class IndexStackExplained extends StatefulWidget {
  const IndexStackExplained({Key? key}) : super(key: key);

  @override
  _IndexStackExplainedState createState() => _IndexStackExplainedState();
}

class _IndexStackExplainedState extends State<IndexStackExplained> {
  int _widgetIndex = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: IndexedStack(
        index: _widgetIndex,
        children: [
          Container(
            width: size.width,
            height: size.height * 0.6,
            color: Colors.blue,
          ),
          Container(
            width: size.width,
            height: size.height * 0.6,
            color: Colors.green,
          ),
          Container(
            width: size.width,
            height: size.height * 0.6,
            color: Colors.pink,
          ),
          Container(
            width: size.width,
            height: size.height * 0.6,
            color: Colors.amber,
          ),
          Container(
            width: size.width,
            height: size.height * 0.6,
            color: Colors.brown,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {
            if (_widgetIndex < 4) {
              _widgetIndex++;
            } else {
              _widgetIndex = 0;
            }
          });
        },
      ),
    );
  }
}
