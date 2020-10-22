import 'package:demo2app/ui/pages/about_page/about_page.dart';
import 'package:demo2app/ui/pages/home_page/home_page.dart';
import 'package:demo2app/ui/pages/learn_page/learn_page.dart';
import 'package:flutter/material.dart';

class NavBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: EdgeInsets.symmetric(horizontal: 80),
      height: 50,
      child: Row(
        children: <Widget>[
          Flexible(
            flex: 1,
            child: Container(
              width: 100,
              height: 50,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/logo.jpg'))),
            ),
          ),
          Flexible(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FlatButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed(HomePage.routeName);
                    },
                    child: Text('Home')),
                FlatButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed(AboutPage.routeName);
                    },
                    child: Text('About')),
                FlatButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed(LearnPage.routeName);
                    },
                    child: Text('Learn')),
                FlatButton(onPressed: () {}, child: Text('Support')),
              ],
            ),
          )
        ],
      ),
    );
  }
}
