import 'package:flutter/material.dart';

class MainContentTablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Column(
        children: <Widget>[
          Container(
            child: Text(
              'Flutter is Google’s UI toolkit for building beautiful, natively compiled applications for mobile, web, and desktop from a single codebase.',
              style: TextStyle(color: Colors.cyan, fontSize: 20),
            ),
          ),
          Container(
            width: 500,
            height: 400,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/dahab.jpg'))),
          )
        ],
      ),
    );
  }
}
