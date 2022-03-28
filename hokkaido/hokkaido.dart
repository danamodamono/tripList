import 'package:flutter/material.dart';
import 'package:trip_list/parts/select_button.dart';
import 'package:trip_list/view/area/prefectures/hokkaido/screens/hokkaido_gurume.dart';
import 'package:trip_list/view/area/prefectures/hokkaido/screens/hokkaido_hotel.dart';
import 'package:trip_list/view/area/prefectures/hokkaido/screens/hokkaido_leisure.dart';


class Hokkaido extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("北海道"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: SelectButton(
                      onPressed: () => _startHokkaidoLeisure(context),
                      icon: Icon(Icons.play_arrow),
                      label: "レジャー",
                      color: Colors.indigo,
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: SelectButton(
                      onPressed: () => _startHokkaidoGurume(context),
                      icon: Icon(Icons.play_arrow),
                      label: "グルメ",
                      color: Colors.indigo,
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: SelectButton(
                      onPressed: () => _startHokkaidoHotel(context),
                      icon: Icon(Icons.play_arrow),
                      label: "ホテル・宿",
                      color: Colors.indigo,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _startHokkaidoLeisure(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HokkaidoLeisure()));
  }

  _startHokkaidoGurume(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HokkaidoGurume()));
  }

  _startHokkaidoHotel(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HokkaidoHotel()));
  }

}

