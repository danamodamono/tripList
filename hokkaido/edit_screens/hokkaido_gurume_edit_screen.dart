import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:sqlite3/src/api/exception.dart';
import 'package:trip_list/main.dart';
import 'package:trip_list/models/db/database.dart';
import 'package:trip_list/view/area/prefectures/hokkaido/screens/hokkaido_gurume.dart';

import 'package:trip_list/view/conponents/card_background.dart';

enum EditStatus { ADD, EDIT }

class HokkaidoGurumeEditScreen extends StatefulWidget {
  final EditStatus status;
  final Place? place;

  HokkaidoGurumeEditScreen({required this.status, this.place});

  @override
  _HokkaidoGurumeEditScreenState createState() =>
      _HokkaidoGurumeEditScreenState();
}

class _HokkaidoGurumeEditScreenState extends State<HokkaidoGurumeEditScreen> {
  TextEditingController gurumeNameController = TextEditingController();
  TextEditingController gurumeCommentController = TextEditingController();

  String _titleText = "";

  bool _isGurumeNameEnabled = true;

  @override
  void initState() {
    super.initState();
    if (widget.status == EditStatus.ADD) {
      _isGurumeNameEnabled = true;
      _titleText = "新規登録";
      gurumeNameController.text = "";
      gurumeCommentController.text = "";
    } else {
      _titleText = "編集して再登録";
      _isGurumeNameEnabled = false;
      gurumeNameController.text = widget.place!.strName;
      gurumeCommentController.text = widget.place!.strComment;
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => _backToHokkaidoGurume(),
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
                  _gurumeNameInputPart(),
                  SizedBox(
                    height: 25.0,
                  ),
                  //コメント
                  _gurumeCommentInputPart(),
                  SizedBox(
                    height: 25.0,
                  ),
                  _gurumeQrOutPart(),
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

  Widget _gurumeNameInputPart() {
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
          enabled: _isGurumeNameEnabled,
          controller: gurumeNameController,
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

  Widget _gurumeCommentInputPart() {
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
          controller: gurumeCommentController,
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

  Widget _gurumeQrOutPart() {
    if (gurumeNameController.text == "") {
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

  Future<bool> _backToHokkaidoGurume() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => HokkaidoGurume()));
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
    if (gurumeNameController.text == "") {
      Fluttertoast.showToast(
        msg: "名所を入力しないと登録できません",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
      );
      return;
    }

    var place = Place(
      strName: gurumeNameController.text,
      strComment: gurumeCommentController.text,
      strCategory: 'hokkaidoGurume',
    );

    try {
      await database.addWord(place);
      gurumeNameController.clear();
      gurumeCommentController.clear();
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
    if (gurumeNameController.text == "") {
      Fluttertoast.showToast(
        msg: "名所を入力しないと登録できません",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
      );
      return;
    }

    var place = Place(
      strName: gurumeNameController.text,
      strComment: gurumeCommentController.text,
      strCategory: 'hokkaidoGurume',
    );

    try {
      await database.updateWord(place);
      _backToHokkaidoGurume();
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
