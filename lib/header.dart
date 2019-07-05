import 'package:flutter_web/material.dart';

import 'color_assets.dart';
import 'strings.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 45.0, vertical: 38.0),
      child: _buildHeader(),
    );
  }

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        _buildLogo(),
        _buildHeaderLinks(),
      ],
    );
  }

  Widget _buildHeaderLinks() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: getLinksListing()..add(_buildLoginButton()),
    );
  }

  List<Widget> getLinksListing() {
    var links = ["Home", "Samples", "Videos", "Plugins"];
    return links.map((link) {
      return Padding(
        padding: EdgeInsets.only(left: 18.0),
        child: Text(
          link,
          style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
        ),
      );
    }).toList();
  }

  Widget _buildLoginButton() {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: InkWell(
        child: Container(
          margin: EdgeInsets.only(left: 20.0),
          width: 120.0,
          height: 40.0,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [ColorAssets.blue1, ColorAssets.blue2],
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
              ),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: ColorAssets.blue3.withOpacity(0.3),
                    offset: Offset(0, 8),
                    blurRadius: 8),
              ]),
          child: Material(
            color: Colors.transparent,
            child: Center(
              child: Text(
                Strings.loginButton,
                style: TextStyle(
                  color: ColorAssets.white,
                  fontSize: 18.0,
                  letterSpacing: 1,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLogo() {
    return Row(
      children: <Widget>[
        Container(
          width: 60.0,
          height: 60.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            gradient: LinearGradient(
              colors: [ColorAssets.blue1, ColorAssets.blue2],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
            ),
          ),
          child: Center(
            child: Text(
              Strings.logoTitle,
              style: TextStyle(fontSize: 30.0, color: ColorAssets.white),
            ),
          ),
        ),
        SizedBox(
          width: 16.0,
        ),
        Text(
          Strings.appTitle,
          style: TextStyle(fontSize: 26),
        ),
      ],
    );
  }
}
