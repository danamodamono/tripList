import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:trip_list/main.dart';
import 'package:trip_list/models/db/database.dart';
import 'package:trip_list/parts/confirm_dialog.dart';
import 'package:trip_list/view/area/prefectures/hokkaido/edit_screens/hokkaido_leisure_edit_screen.dart';

class HokkaidoLeisure extends StatefulWidget {
  @override
  _HokkaidoLeisureState createState() => _HokkaidoLeisureState();
}

class _HokkaidoLeisureState extends State<HokkaidoLeisure> {
  List<Place> _placeList = [];

  @override
  void initState() {
    super.initState();
    _getAllWords();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("レジャー"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _addNewWord(),
        child: Icon(Icons.add),
        tooltip: "新規登録",
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: _placeListWidget(),
      ),
    );
  }

  _addNewWord() {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => HokkaidoLeisureEditScreen(
              status: EditStatus.ADD,
            )));
  }

  void _getAllWords() async {
    _placeList = await database.hokkaidoLeisureSelect;
    setState(() {});
  }

  Widget _placeListWidget() {
    return ListView.builder(
      itemCount: _placeList.length,
      itemBuilder: (context, int position) => _placeItem(position),
    );
  }

  Widget _placeItem(int position) {
    return Card(
      elevation: 5.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      color: Colors.indigo,
      child: ListTile(
        title: Text("${_placeList[position].strName}",
          style: TextStyle(
            fontSize: 24.0,
          ),
        ),
        leading: Icon(Icons.directions_run),
        onTap: () => _editWord(_placeList[position]),
        trailing: IconButton(
          icon: Icon(Icons.clear),
          onPressed: () => showConfirmDialog(
              context: context,
              title: "削除",
              content: "リストを削除してもいいですか？",
              onConfirmed: (isConfirmed) {
                if (isConfirmed) {
                  _deleteWord(_placeList[position]);
                }
              }
          ),
        ),
      ),
    );
  }

  _deleteWord(Place selectedPlace) async {
    await database.deleteWord(selectedPlace);
    Fluttertoast.showToast(
      msg: "削除が完了しました",
      toastLength: Toast.LENGTH_LONG,
    );
    _getAllWords();
  }

  _editWord(Place selectedPlace) {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => HokkaidoLeisureEditScreen(
              status: EditStatus.EDIT,
              place: selectedPlace,
            )));
  }
}
