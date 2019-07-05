import 'package:flutter_web/material.dart';

import 'color_assets.dart';
import 'strings.dart';
import 'subscribe_button.dart';

class EmailBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 4.0, right: 74.0, top: 10.0, bottom: 40.0),
      child: Container(
        height: 60.0,
        decoration: BoxDecoration(
          color: ColorAssets.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                color: Colors.black12, offset: Offset(0, 8), blurRadius: 8),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                flex: 8,
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: Strings.emailHint,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: SubscribeButton(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
