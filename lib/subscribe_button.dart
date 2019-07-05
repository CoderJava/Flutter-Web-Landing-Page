import 'package:flutter_web/material.dart';

import 'color_assets.dart';
import 'strings.dart';

class SubscribeButton extends StatelessWidget {
  var emailImage = "assets/email.png";

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 40.0,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [ColorAssets.blue1, ColorAssets.blue2],
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
          ),
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            BoxShadow(
              color: ColorAssets.blue3.withOpacity(.3),
              offset: Offset(0, 8),
              blurRadius: 8.0,
            ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {},
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    Strings.subscribeButton,
                    style: TextStyle(
                        color: ColorAssets.white,
                        fontSize: 16.0,
                        letterSpacing: 1),
                  ),
                  SizedBox(width: 8.0),
                  Image.network(
                    emailImage,
                    color: ColorAssets.white,
                    width: 20.0,
                    height: 20.0,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
