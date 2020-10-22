import 'package:demo2app/ui/pages/home_page/main_content_desktop.dart';
import 'package:demo2app/ui/pages/home_page/main_content_tablet.dart';
import 'package:demo2app/ui/shared/center_widget.dart';
import 'package:demo2app/ui/shared/nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/';
  @override
  Widget build(BuildContext context) {
    var deviceType = getDeviceType(MediaQuery.of(context).size);
    return Scaffold(
        appBar: deviceType == DeviceScreenType.mobile ? AppBar() : null,
        drawer: deviceType == DeviceScreenType.mobile
            ? Drawer(
                child: Container(color: Colors.red),
              )
            : null,
        body: ScreenTypeLayout(
          mobile: Container(child: Text('Mobile')),
          tablet: Container(
            child: Column(
              children: <Widget>[
                NavBarWidget(),
                CenterdedWidget(
                  child: MainContentTablet(),
                ),
              ],
            ),
          ),
          desktop: Container(
            child: Column(
              children: <Widget>[
                NavBarWidget(),
                CenterdedWidget(
                  child: MainContentDesktop(),
                ),
              ],
            ),
          ),
        ));
  }
}
