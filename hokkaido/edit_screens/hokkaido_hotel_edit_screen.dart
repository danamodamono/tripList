import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:sqlite3/src/api/exception.dart';
import 'package:trip_list/main.dart';
import 'package:trip_list/models/db/database.dart';
import 'package:trip_list/view/area/prefectures/hokkaido/screens/hokkaido_hotel.dart';

import 'package:trip_list/view/conponents/card_background.dart';

enum EditStatus { ADD, EDIT }

class HokkaidoHotelEditScreen extends StatefulWidget {
  final EditStatus status;
  final Place? place;

  HokkaidoHotelEditScreen({required this.status, this.place});

  @override
  _HokkaidoHotelEditScreenState createState() =>
      _HokkaidoHotelEditScreenState();
}

class _HokkaidoHotelEditScreenState extends State<HokkaidoHotelEditScreen> {
  TextEditingController hotelNameController = TextEditingController();
  TextEditingController hotelCommentController = TextEditingController();

  String _titleText = "";

  bool _isHotelNameEnabled = true;

  @override
  void initState() {
    super.initState();
    if (widget.status == EditStatus.ADD) {
      _isHotelNameEnabled = true;
      _titleText = "新規登録";
      hotelNameController.text = "";
      hotelCommentController.text = "";
    } else {
      _titleText = "編集して再登録";
      _isHotelNameEnabled = false;
      hotelNameController.text = widget.place!.strName;
      hotelCommentController.text = widget.place!.strComment;
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => _backToHokkaidoHotel(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(_titleText),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.done),
              tooltip: "登録",
              onPressed: () => _onWordRegistered(),
              iconSize: 40,
            )
          ],
        ),
        body: Stack(
          children: [
            CardBackground(),
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 30.0,
                  ),
                  //場所名
                  _hotelNameInputPart(),
                  SizedBox(
                    height: 25.0,
                  ),
                  //コメント
                  _hotelCommentInputPart(),
                  SizedBox(
                    height: 25.0,
                  ),
                  _hotelQrOutPart(),
                  SizedBox(
                    height: 25.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _hotelNameInputPart() {
    return Column(
      children: <Widget>[
        Text(
          "名前",
          style: TextStyle(
            fontSize: 24.0,
            color: Colors.blueGrey,
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        TextField(
          enabled: _isHotelNameEnabled,
          controller: hotelNameController,
          keyboardType: TextInputType.text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 30.0,
            color: Colors.black87,
          ),
        )
      ],
    );
  }

  Widget _hotelCommentInputPart() {
    return Column(
      children: <Widget>[
        Text(
          "ひとことメモ",
          style: TextStyle(
            fontSize: 24.0,
            color: Colors.blueGrey,
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        TextField(
          controller: hotelCommentController,
          keyboardType: TextInputType.multiline,
          maxLines: null,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 30.0,
            color: Colors.black87,
          ),
        )
      ],
    );
  }

  Widget _hotelQrOutPart() {
    if (hotelNameController.text == "") {
      return Container();
    } else {
      return Column(
        children: <Widget>[
          Text(
            "QRコード",
            style: TextStyle(
              fontSize: 24.0,
              color: Colors.blueGrey,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          QrImage(
            data: widget.place!.strName,
            version: QrVersions.auto,
            size:200.0,
            foregroundColor: Colors.black,
            backgroundColor: Colors.white,
          ),
        ],
      );
    }

  }

  Future<bool> _backToHokkaidoHotel() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => HokkaidoHotel()));
    return Future.value(false);
  }

  _onWordRegistered() {
    if (widget.status == EditStatus.ADD) {
      _insertPlace();
    } else {
      _updatePlace();
    }
  }

  _insertPlace() async {
    if (hotelNameController.text == "") {
      Fluttertoast.showToast(
        msg: "名所を入力しないと登録できません",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
      );
      return;
    }

    var place = Place(
      strName: hotelNameController.text,
      strComment: hotelCommentController.text,
      strCategory: 'hokkaidoHotel',
    );

    try {
      await database.addWord(place);
      hotelNameController.clear();
      hotelCommentController.clear();
      // 登録完了メッセージ
      Fluttertoast.showToast(
        msg: "登録が完了しました",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
      );
    } on SqliteException catch (e) {
      Fluttertoast.showToast(
        msg: "この名所は既に登録されていますので登録できません",
        toastLength: Toast.LENGTH_LONG,
      );
    }
  }

  void _updatePlace() async {
    if (hotelNameController.text == "") {
      Fluttertoast.showToast(
        msg: "名所を入力しないと登録できません",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
      );
      return;
    }

    var place = Place(
      strName: hotelNameController.text,
      strComment: hotelCommentController.text,
      strCategory: 'hokkaidoHotel',
    );

    try {
      await database.updateWord(place);
      _backToHokkaidoHotel();
      Fluttertoast.showToast(
        msg: "編集が完了しました",
        toastLength: Toast.LENGTH_LONG,
      );
    } on SqliteException catch (e) {
      Fluttertoast.showToast(
        msg: "何らかの問題が発生して登録できませんでした。: $e",
        toastLength: Toast.LENGTH_LONG,
      );
      return;
    }
  }
}
