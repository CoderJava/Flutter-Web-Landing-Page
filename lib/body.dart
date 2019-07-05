import 'package:flutter_web/material.dart';

import 'color_assets.dart';
import 'email_box.dart';
import 'strings.dart';

class Body extends StatelessWidget {
  var _backgroundImage = "assets/flutter_image.jpg";

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600.0,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          _addBackground(),
          _addWelcomeText(),
        ],
      ),
    );
  }

  Widget _addBackground() {
    return FractionallySizedBox(
      alignment: Alignment.centerRight,
      widthFactor: .6,
      child: Image.network(
        _backgroundImage,
        scale: .85,
      ),
    );
  }

  Widget _addWelcomeText() {
    return FractionallySizedBox(
      alignment: Alignment.centerLeft,
      widthFactor: .6,
      child: Padding(
        padding: EdgeInsets.only(left: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              Strings.hello,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 60.0,
                  color: ColorAssets.blue4),
            ),
            RichText(
              text: TextSpan(
                text: Strings.welcomeTo,
                style: TextStyle(
                  fontSize: 60.0,
                  color: ColorAssets.blue4,
                ),
                children: [
                  TextSpan(
                    text: Strings.ftf,
                    style: TextStyle(
                      fontSize: 60.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 12.0, top: 20.0),
              child: Text(Strings.subscribeText),
            ),
            SizedBox(height: 40.0),
            //EmailBox(),
          ],
        ),
      ),
    );
  }
}
