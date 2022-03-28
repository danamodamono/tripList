import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;


part "database.g.dart";

class Places extends Table {
  TextColumn get strName => text()();
  TextColumn get strComment => text()();
  TextColumn get strCategory => text()();

  @override
  Set<Column>? get primaryKey => {strName};
}

@DriftDatabase(tables: [Places])
class MyDatabase extends _$MyDatabase{

  MyDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  //Create
  Future addWord(Place place) => into(places).insert(place);

  //Read
  //Hokkaido
  Future<List<Place>> get hokkaidoGurumeSelect => (select(places)
    ..where((table) => table.strCategory.equals("hokkaidoGurume")))
      .get();
  Future<List<Place>> get hokkaidoHotelSelect => (select(places)
    ..where((table) => table.strCategory.equals("hokkaidoHotel")))
      .get();
  Future<List<Place>> get hokkaidoLeisureSelect => (select(places)
    ..where((table) => table.strCategory.equals("hokkaidoLeisure")))
      .get();

  //Gunma
  Future<List<Place>> get gunmaGurumeSelect => (select(places)
    ..where((table) => table.strCategory.equals("gunmaGurume")))
      .get();
  Future<List<Place>> get gunmaHotelSelect => (select(places)
    ..where((table) => table.strCategory.equals("gunmaHotel")))
      .get();
  Future<List<Place>> get gunmaLeisureSelect => (select(places)
    ..where((table) => table.strCategory.equals("gunmaLeisure")))
      .get();

  //Ibaraki
  Future<List<Place>> get ibarakiGurumeSelect => (select(places)
    ..where((table) => table.strCategory.equals("ibarakiGurume")))
      .get();
  Future<List<Place>> get ibarakiHotelSelect => (select(places)
    ..where((table) => table.strCategory.equals("ibarakiHotel")))
      .get();
  Future<List<Place>> get ibarakiLeisureSelect => (select(places)
    ..where((table) => table.strCategory.equals("ibarakiLeisure")))
      .get();

  //Kanagawa
  Future<List<Place>> get kanagawaGurumeSelect => (select(places)
    ..where((table) => table.strCategory.equals("kanagawaGurume")))
      .get();
  Future<List<Place>> get kanagawaHotelSelect => (select(places)
    ..where((table) => table.strCategory.equals("kanagawaHotel")))
      .get();
  Future<List<Place>> get kanagawaLeisureSelect => (select(places)
    ..where((table) => table.strCategory.equals("kanagawaLeisure")))
      .get();

  //Saitama
  Future<List<Place>> get saitamaGurumeSelect => (select(places)
    ..where((table) => table.strCategory.equals("saitamaGurume")))
      .get();
  Future<List<Place>> get saitamaHotelSelect => (select(places)
    ..where((table) => table.strCategory.equals("saitamaHotel")))
      .get();
  Future<List<Place>> get saitamaLeisureSelect => (select(places)
    ..where((table) => table.strCategory.equals("saitamaLeisure")))
      .get();

  //Tiba
  Future<List<Place>> get tibaGurumeSelect => (select(places)
    ..where((table) => table.strCategory.equals("tibaGurume")))
      .get();
  Future<List<Place>> get tibaHotelSelect => (select(places)
    ..where((table) => table.strCategory.equals("tibaHotel")))
      .get();
  Future<List<Place>> get tibaLeisureSelect => (select(places)
    ..where((table) => table.strCategory.equals("tibaLeisure")))
      .get();

  //Tokyo
  Future<List<Place>> get tokyoGurumeSelect => (select(places)
    ..where((table) => table.strCategory.equals("tokyoGurume")))
      .get();
  Future<List<Place>> get tokyoHotelSelect => (select(places)
    ..where((table) => table.strCategory.equals("tokyoHotel")))
      .get();
  Future<List<Place>> get tokyoLeisureSelect => (select(places)
    ..where((table) => table.strCategory.equals("tokyoLeisure")))
      .get();

  //Totigi
  Future<List<Place>> get totigiGurumeSelect => (select(places)
    ..where((table) => table.strCategory.equals("totigiGurume")))
      .get();
  Future<List<Place>> get totigiHotelSelect => (select(places)
    ..where((table) => table.strCategory.equals("totigiHotel")))
      .get();
  Future<List<Place>> get totigiLeisureSelect => (select(places)
    ..where((table) => table.strCategory.equals("totigiLeisure")))
      .get();

  //Hyogo
  Future<List<Place>> get hyogoGurumeSelect => (select(places)
    ..where((table) => table.strCategory.equals("hyogoGurume")))
      .get();
  Future<List<Place>> get hyogoHotelSelect => (select(places)
    ..where((table) => table.strCategory.equals("hyogoHotel")))
      .get();
  Future<List<Place>> get hyogoLeisureSelect => (select(places)
    ..where((table) => table.strCategory.equals("hyogoLeisure")))
      .get();

  //Kyoto
  Future<List<Place>> get kyotoGurumeSelect => (select(places)
    ..where((table) => table.strCategory.equals("kyotoGurume")))
      .get();
  Future<List<Place>> get kyotoHotelSelect => (select(places)
    ..where((table) => table.strCategory.equals("kyotoHotel")))
      .get();
  Future<List<Place>> get kyotoLeisureSelect => (select(places)
    ..where((table) => table.strCategory.equals("kyotoLeisure")))
      .get();

  //Mie
  Future<List<Place>> get mieGurumeSelect => (select(places)
    ..where((table) => table.strCategory.equals("mieGurume")))
      .get();
  Future<List<Place>> get mieHotelSelect => (select(places)
    ..where((table) => table.strCategory.equals("mieHotel")))
      .get();
  Future<List<Place>> get mieLeisureSelect => (select(places)
    ..where((table) => table.strCategory.equals("mieLeisure")))
      .get();

  //Nara
  Future<List<Place>> get naraGurumeSelect => (select(places)
    ..where((table) => table.strCategory.equals("naraGurume")))
      .get();
  Future<List<Place>> get naraHotelSelect => (select(places)
    ..where((table) => table.strCategory.equals("naraHotel")))
      .get();
  Future<List<Place>> get naraLeisureSelect => (select(places)
    ..where((table) => table.strCategory.equals("naraLeisure")))
      .get();

  //Osaka
  Future<List<Place>> get osakaGurumeSelect => (select(places)
    ..where((table) => table.strCategory.equals("osakaGurume")))
      .get();
  Future<List<Place>> get osakaHotelSelect => (select(places)
    ..where((table) => table.strCategory.equals("osakaHotel")))
      .get();
  Future<List<Place>> get osakaLeisureSelect => (select(places)
    ..where((table) => table.strCategory.equals("osakaLeisure")))
      .get();

  //Shiga
  Future<List<Place>> get shigaGurumeSelect => (select(places)
    ..where((table) => table.strCategory.equals("shigaGurume")))
      .get();
  Future<List<Place>> get shigaHotelSelect => (select(places)
    ..where((table) => table.strCategory.equals("shigaHotel")))
      .get();
  Future<List<Place>> get shigaLeisureSelect => (select(places)
    ..where((table) => table.strCategory.equals("shigaLeisure")))
      .get();

  //Wakayama
  Future<List<Place>> get wakayamaGurumeSelect => (select(places)
    ..where((table) => table.strCategory.equals("wakayamaGurume")))
      .get();
  Future<List<Place>> get wakayamaHotelSelect => (select(places)
    ..where((table) => table.strCategory.equals("wakayamaHotel")))
      .get();
  Future<List<Place>> get wakayamaLeisureSelect => (select(places)
    ..where((table) => table.strCategory.equals("wakayamaLeisure")))
      .get();

  //Hukuoka
  Future<List<Place>> get hukuokaGurumeSelect => (select(places)
    ..where((table) => table.strCategory.equals("hukuokaGurume")))
      .get();
  Future<List<Place>> get hukuokaHotelSelect => (select(places)
    ..where((table) => table.strCategory.equals("hukuokaHotel")))
      .get();
  Future<List<Place>> get hukuokaLeisureSelect => (select(places)
    ..where((table) => table.strCategory.equals("hukuokaLeisure")))
      .get();

  //Kagoshima
  Future<List<Place>> get kagoshimaGurumeSelect => (select(places)
    ..where((table) => table.strCategory.equals("kagoshimaGurume")))
      .get();
  Future<List<Place>> get kagoshimaHotelSelect => (select(places)
    ..where((table) => table.strCategory.equals("kagoshimaHotel")))
      .get();
  Future<List<Place>> get kagoshimaLeisureSelect => (select(places)
    ..where((table) => table.strCategory.equals("kagoshimaLeisure")))
      .get();

  //Kumamoto
  Future<List<Place>> get kumamotoGurumeSelect => (select(places)
    ..where((table) => table.strCategory.equals("kumamotoGurume")))
      .get();
  Future<List<Place>> get kumamotoHotelSelect => (select(places)
    ..where((table) => table.strCategory.equals("kumamotoHotel")))
      .get();
  Future<List<Place>> get kumamotoLeisureSelect => (select(places)
    ..where((table) => table.strCategory.equals("kumamotoLeisure")))
      .get();

  //Miyazaki
  Future<List<Place>> get miyazakiGurumeSelect => (select(places)
    ..where((table) => table.strCategory.equals("miyazakiGurume")))
      .get();
  Future<List<Place>> get miyazakiHotelSelect => (select(places)
    ..where((table) => table.strCategory.equals("miyazakiHotel")))
      .get();
  Future<List<Place>> get miyazakiLeisureSelect => (select(places)
    ..where((table) => table.strCategory.equals("miyazakiLeisure")))
      .get();

  //Nagasaki
  Future<List<Place>> get nagasakiGurumeSelect => (select(places)
    ..where((table) => table.strCategory.equals("nagasakiGurume")))
      .get();
  Future<List<Place>> get nagasakiHotelSelect => (select(places)
    ..where((table) => table.strCategory.equals("nagasakiHotel")))
      .get();
  Future<List<Place>> get nagasakiLeisureSelect => (select(places)
    ..where((table) => table.strCategory.equals("nagasakiLeisure")))
      .get();

  //Oita
  Future<List<Place>> get oitaGurumeSelect => (select(places)
    ..where((table) => table.strCategory.equals("oitaGurume")))
      .get();
  Future<List<Place>> get oitaHotelSelect => (select(places)
    ..where((table) => table.strCategory.equals("oitaHotel")))
      .get();
  Future<List<Place>> get oitaLeisureSelect => (select(places)
    ..where((table) => table.strCategory.equals("oitaLeisure")))
      .get();

  //Saga
  Future<List<Place>> get sagaGurumeSelect => (select(places)
    ..where((table) => table.strCategory.equals("sagaGurume")))
      .get();
  Future<List<Place>> get sagaHotelSelect => (select(places)
    ..where((table) => table.strCategory.equals("sagaHotel")))
      .get();
  Future<List<Place>> get sagaLeisureSelect => (select(places)
    ..where((table) => table.strCategory.equals("sagaLeisure")))
      .get();

  //Okinawa
  Future<List<Place>> get okinawaGurumeSelect => (select(places)
    ..where((table) => table.strCategory.equals("okinawaGurume")))
      .get();
  Future<List<Place>> get okinawaHotelSelect => (select(places)
    ..where((table) => table.strCategory.equals("okinawaHotel")))
      .get();
  Future<List<Place>> get okinawaLeisureSelect => (select(places)
    ..where((table) => table.strCategory.equals("okinawaLeisure")))
      .get();

  //Sonota
  Future<List<Place>> get sonotaGurumeSelect => (select(places)
    ..where((table) => table.strCategory.equals("sonotaGurume")))
      .get();
  Future<List<Place>> get sonotaHotelSelect => (select(places)
    ..where((table) => table.strCategory.equals("sonotaHotel")))
      .get();
  Future<List<Place>> get sonotaLeisureSelect => (select(places)
    ..where((table) => table.strCategory.equals("sonotaLeisure")))
      .get();

  //Ehime
  Future<List<Place>> get ehimeGurumeSelect => (select(places)
    ..where((table) => table.strCategory.equals("ehimeGurume")))
      .get();
  Future<List<Place>> get ehimeHotelSelect => (select(places)
    ..where((table) => table.strCategory.equals("ehimeHotel")))
      .get();
  Future<List<Place>> get ehimeLeisureSelect => (select(places)
    ..where((table) => table.strCategory.equals("ehimeLeisure")))
      .get();

  //Kagawa
  Future<List<Place>> get kagawaGurumeSelect => (select(places)
    ..where((table) => table.strCategory.equals("kagawaGurume")))
      .get();
  Future<List<Place>> get kagawaHotelSelect => (select(places)
    ..where((table) => table.strCategory.equals("kagawaHotel")))
      .get();
  Future<List<Place>> get kagawaLeisureSelect => (select(places)
    ..where((table) => table.strCategory.equals("kagawaLeisure")))
      .get();

  //Kouti
  Future<List<Place>> get koutiGurumeSelect => (select(places)
    ..where((table) => table.strCategory.equals("koutiGurume")))
      .get();
  Future<List<Place>> get koutiHotelSelect => (select(places)
    ..where((table) => table.strCategory.equals("koutiHotel")))
      .get();
  Future<List<Place>> get koutiLeisureSelect => (select(places)
    ..where((table) => table.strCategory.equals("koutiLeisure")))
      .get();

  //Tokushima
  Future<List<Place>> get tokushimaGurumeSelect => (select(places)
    ..where((table) => table.strCategory.equals("tokushimaGurume")))
      .get();
  Future<List<Place>> get tokushimaHotelSelect => (select(places)
    ..where((table) => table.strCategory.equals("tokushimaHotel")))
      .get();
  Future<List<Place>> get tokushimaLeisureSelect => (select(places)
    ..where((table) => table.strCategory.equals("tokushimaLeisure")))
      .get();

  //Akita
  Future<List<Place>> get akitaGurumeSelect => (select(places)
    ..where((table) => table.strCategory.equals("akitaGurume")))
      .get();
  Future<List<Place>> get akitaHotelSelect => (select(places)
    ..where((table) => table.strCategory.equals("akitaHotel")))
      .get();
  Future<List<Place>> get akitaLeisureSelect => (select(places)
    ..where((table) => table.strCategory.equals("akitaLeisure")))
      .get();

  //Aomori
  Future<List<Place>> get aomoriGurumeSelect => (select(places)
    ..where((table) => table.strCategory.equals("aomoriGurume")))
      .get();
  Future<List<Place>> get aomoriHotelSelect => (select(places)
    ..where((table) => table.strCategory.equals("aomoriHotel")))
      .get();
  Future<List<Place>> get aomoriLeisureSelect => (select(places)
    ..where((table) => table.strCategory.equals("aomoriLeisure")))
      .get();

  //Hukushima
  Future<List<Place>> get hukushimaGurumeSelect => (select(places)
    ..where((table) => table.strCategory.equals("hukushimaGurume")))
      .get();
  Future<List<Place>> get hukushimaHotelSelect => (select(places)
    ..where((table) => table.strCategory.equals("hukushimaHotel")))
      .get();
  Future<List<Place>> get hukushimaLeisureSelect => (select(places)
    ..where((table) => table.strCategory.equals("hukushimaLeisure")))
      .get();

  //Iwate
  Future<List<Place>> get iwateGurumeSelect => (select(places)
    ..where((table) => table.strCategory.equals("iwateGurume")))
      .get();
  Future<List<Place>> get iwateHotelSelect => (select(places)
    ..where((table) => table.strCategory.equals("iwateHotel")))
      .get();
  Future<List<Place>> get iwateLeisureSelect => (select(places)
    ..where((table) => table.strCategory.equals("iwateLeisure")))
      .get();

  //Miyagi
  Future<List<Place>> get miyagiGurumeSelect => (select(places)
    ..where((table) => table.strCategory.equals("miyagiGurume")))
      .get();
  Future<List<Place>> get miyagiHotelSelect => (select(places)
    ..where((table) => table.strCategory.equals("miyagiHotel")))
      .get();
  Future<List<Place>> get miyagiLeisureSelect => (select(places)
    ..where((table) => table.strCategory.equals("miyagiLeisure")))
      .get();

  //Yamagata
  Future<List<Place>> get yamagataGurumeSelect => (select(places)
    ..where((table) => table.strCategory.equals("yamagataGurume")))
      .get();
  Future<List<Place>> get yamagataHotelSelect => (select(places)
    ..where((table) => table.strCategory.equals("yamagataHotel")))
      .get();
  Future<List<Place>> get yamagataLeisureSelect => (select(places)
    ..where((table) => table.strCategory.equals("yamagataLeisure")))
      .get();

  //Aiti
  Future<List<Place>> get aitiGurumeSelect => (select(places)
    ..where((table) => table.strCategory.equals("aitiGurume")))
      .get();
  Future<List<Place>> get aitiHotelSelect => (select(places)
    ..where((table) => table.strCategory.equals("aitiHotel")))
      .get();
  Future<List<Place>> get aitiLeisureSelect => (select(places)
    ..where((table) => table.strCategory.equals("aitiLeisure")))
      .get();

  //Gihu
  Future<List<Place>> get gihuGurumeSelect => (select(places)
    ..where((table) => table.strCategory.equals("gihuGurume")))
      .get();
  Future<List<Place>> get gihuHotelSelect => (select(places)
    ..where((table) => table.strCategory.equals("gihuHotel")))
      .get();
  Future<List<Place>> get gihuLeisureSelect => (select(places)
    ..where((table) => table.strCategory.equals("gihuLeisure")))
      .get();

  //Hukui
  Future<List<Place>> get hukuiGurumeSelect => (select(places)
    ..where((table) => table.strCategory.equals("hukuiGurume")))
      .get();
  Future<List<Place>> get hukuiHotelSelect => (select(places)
    ..where((table) => table.strCategory.equals("hukuiHotel")))
      .get();
  Future<List<Place>> get hukuiLeisureSelect => (select(places)
    ..where((table) => table.strCategory.equals("hukuiLeisure")))
      .get();

  //Ishikawa
  Future<List<Place>> get ishikawaGurumeSelect => (select(places)
    ..where((table) => table.strCategory.equals("ishikawaGurume")))
      .get();
  Future<List<Place>> get ishikawaHotelSelect => (select(places)
    ..where((table) => table.strCategory.equals("ishikawaHotel")))
      .get();
  Future<List<Place>> get ishikawaLeisureSelect => (select(places)
    ..where((table) => table.strCategory.equals("ishikawaLeisure")))
      .get();

  //Nagano
  Future<List<Place>> get naganoGurumeSelect => (select(places)
    ..where((table) => table.strCategory.equals("naganoGurume")))
      .get();
  Future<List<Place>> get naganoHotelSelect => (select(places)
    ..where((table) => table.strCategory.equals("naganoHotel")))
      .get();
  Future<List<Place>> get naganoLeisureSelect => (select(places)
    ..where((table) => table.strCategory.equals("naganoLeisure")))
      .get();

  //Niigata
  Future<List<Place>> get niigataGurumeSelect => (select(places)
    ..where((table) => table.strCategory.equals("niigataGurume")))
      .get();
  Future<List<Place>> get niigataHotelSelect => (select(places)
    ..where((table) => table.strCategory.equals("niigataHotel")))
      .get();
  Future<List<Place>> get niigataLeisureSelect => (select(places)
    ..where((table) => table.strCategory.equals("niigataLeisure")))
      .get();

  //Shizuoka
  Future<List<Place>> get shizuokaGurumeSelect => (select(places)
    ..where((table) => table.strCategory.equals("shizuokaGurume")))
      .get();
  Future<List<Place>> get shizuokaHotelSelect => (select(places)
    ..where((table) => table.strCategory.equals("shizuokaHotel")))
      .get();
  Future<List<Place>> get shizuokaLeisureSelect => (select(places)
    ..where((table) => table.strCategory.equals("shizuokaLeisure")))
      .get();

  //Toyama
  Future<List<Place>> get toyamaGurumeSelect => (select(places)
    ..where((table) => table.strCategory.equals("toyamaGurume")))
      .get();
  Future<List<Place>> get toyamaHotelSelect => (select(places)
    ..where((table) => table.strCategory.equals("toyamaHotel")))
      .get();
  Future<List<Place>> get toyamaLeisureSelect => (select(places)
    ..where((table) => table.strCategory.equals("toyamaLeisure")))
      .get();

  //Yamanashi
  Future<List<Place>> get yamanashiGurumeSelect => (select(places)
    ..where((table) => table.strCategory.equals("yamanashiGurume")))
      .get();
  Future<List<Place>> get yamanashiHotelSelect => (select(places)
    ..where((table) => table.strCategory.equals("yamanashiHotel")))
      .get();
  Future<List<Place>> get yamanashiLeisureSelect => (select(places)
    ..where((table) => table.strCategory.equals("yamanashiLeisure")))
      .get();

  //Hiroshima
  Future<List<Place>> get hiroshimaGurumeSelect => (select(places)
    ..where((table) => table.strCategory.equals("hiroshimaGurume")))
      .get();
  Future<List<Place>> get hiroshimaHotelSelect => (select(places)
    ..where((table) => table.strCategory.equals("hiroshimaHotel")))
      .get();
  Future<List<Place>> get hiroshimaLeisureSelect => (select(places)
    ..where((table) => table.strCategory.equals("hiroshimaLeisure")))
      .get();

  //Okayama
  Future<List<Place>> get okayamaGurumeSelect => (select(places)
    ..where((table) => table.strCategory.equals("okayamaGurume")))
      .get();
  Future<List<Place>> get okayamaHotelSelect => (select(places)
    ..where((table) => table.strCategory.equals("okayamaHotel")))
      .get();
  Future<List<Place>> get okayamaLeisureSelect => (select(places)
    ..where((table) => table.strCategory.equals("okayamaLeisure")))
      .get();

  //Shimane
  Future<List<Place>> get shimaneGurumeSelect => (select(places)
    ..where((table) => table.strCategory.equals("shimaneGurume")))
      .get();
  Future<List<Place>> get shimaneHotelSelect => (select(places)
    ..where((table) => table.strCategory.equals("shimaneHotel")))
      .get();
  Future<List<Place>> get shimaneLeisureSelect => (select(places)
    ..where((table) => table.strCategory.equals("shimaneLeisure")))
      .get();

  //Tottori
  Future<List<Place>> get tottoriGurumeSelect => (select(places)
    ..where((table) => table.strCategory.equals("tottoriGurume")))
      .get();
  Future<List<Place>> get tottoriHotelSelect => (select(places)
    ..where((table) => table.strCategory.equals("tottoriHotel")))
      .get();
  Future<List<Place>> get tottoriLeisureSelect => (select(places)
    ..where((table) => table.strCategory.equals("tottoriLeisure")))
      .get();

  //Yamaguti
  Future<List<Place>> get yamagutiGurumeSelect => (select(places)
    ..where((table) => table.strCategory.equals("yamagutiGurume")))
      .get();
  Future<List<Place>> get yamagutiHotelSelect => (select(places)
    ..where((table) => table.strCategory.equals("yamagutiHotel")))
      .get();
  Future<List<Place>> get yamagutiLeisureSelect => (select(places)
    ..where((table) => table.strCategory.equals("yamagutiLeisure")))
      .get();

  //Update
  Future updateWord(Place place) => update(places).replace(place);

  //Delete
  Future deleteWord(Place place) =>
      (delete(places)
        ..where((table) => table.strName.equals(place.strName)))
          .go();

}



LazyDatabase _openConnection() {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'trip.db'));
    return NativeDatabase(file);
  });
}