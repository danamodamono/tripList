import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trip_list/parts/button_with_icon.dart';
import 'package:trip_list/style/style.dart';
import 'package:trip_list/view/area/area_select.dart';
import 'package:trip_list/view/conponents/app_background.dart';
import 'package:trip_list/parts/qr_in_part.dart';

class ListPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        // floatingActionButton: FloatingActionButton(
        //   backgroundColor: Colors.white,
        //   onPressed: () => _qrInPart(context),
        //   child: FaIcon(FontAwesomeIcons.camera),
        // ),
        body: Stack(
          children: [
            AppBackground(),
            Column(
              children: [
                Expanded(
                    child: Image.asset("assets/images/125611.png")
                ),
                _titleText(),
                Divider(
                  height: 30.0,
                  color: Colors.white,
                  indent: 8.0,
                  endIndent: 8.0,
                  thickness: 1.0,
                ),
                SizedBox(
                  height: 30.0,
                ),
                //一覧を見るボタン
                ButtonWithIcon(
                  onPressed: () => _startAreaSelect(context),
                  icon: Icon(Icons.list),
                  label: "一覧をみる",
                  color: Colors.indigo
                ),
                SizedBox(
                  height: 50.0,
                ),
                // Text(
                //   "powered by d2 2022",
                //   style: TextStyle(fontFamily: BoldFont),
                // )
              ],
            ),
          ],
        )
    );
  }

  Widget _titleText() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          Text(
            "レジャー",
            style: TextStyle(fontSize: 40.0),
          ),
          Text(
            "グルメ",
            style: TextStyle(fontSize: 40.0),
          ),
          Text(
            "ホテル・宿",
            style: TextStyle(fontSize: 40.0),
          ),
        ],
      ),
    );
  }

  _startAreaSelect(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => AreaSelect()));
  }

  // _qrInPart(BuildContext context) {
  //   Navigator.push(
  //       context, MaterialPageRoute(builder: (context) => QrInPart()));
  // }
}
