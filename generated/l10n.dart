// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes


//
// class S {
//   S();
//
//   static S? _current;
//
//   static S get current {
//     assert(_current != null,
//         'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
//     return _current!;
//   }
//
//   static const AppLocalizationDelegate delegate = AppLocalizationDelegate();
//
//   static Future<S> load(Locale locale) {
//     final name = (locale.countryCode?.isEmpty ?? false)
//         ? locale.languageCode
//         : locale.toString();
//     final localeName = Intl.canonicalizedLocale(name);
//     return initializeMessages(localeName).then((_) {
//       Intl.defaultLocale = localeName;
//       final instance = S();
//       S._current = instance;
//
//       return instance;
//     });
//   }
//
//   static S of(BuildContext context) {
//     final instance = S.maybeOf(context);
//     assert(instance != null,
//         'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
//     return instance!;
//   }
//
//   static S? maybeOf(BuildContext context) {
//     return Localizations.of<S>(context, S);
//   }
//
//   /// `Welcome to Japan`
//   String get welcome {
//     return Intl.message(
//       'Welcome to Japan',
//       name: 'welcome',
//       desc: '',
//       args: [],
//     );
//   }
//
//   /// `Trip Memory`
//   String get appTitle {
//     return Intl.message(
//       'Trip Memory',
//       name: 'appTitle',
//       desc: '',
//       args: [],
//     );
//   }
//
//   /// `camera`
//   String get camera {
//     return Intl.message(
//       'camera',
//       name: 'camera',
//       desc: '',
//       args: [],
//     );
//   }
//
//   /// `Yes`
//   String get yes {
//     return Intl.message(
//       'Yes',
//       name: 'yes',
//       desc: '',
//       args: [],
//     );
//   }
//
//   /// `No`
//   String get no {
//     return Intl.message(
//       'No',
//       name: 'no',
//       desc: '',
//       args: [],
//     );
//   }
//
//   /// `Delete`
//   String get delete {
//     return Intl.message(
//       'Delete',
//       name: 'delete',
//       desc: '',
//       args: [],
//     );
//   }
//
//   /// `add`
//   String get add {
//     return Intl.message(
//       'add',
//       name: 'add',
//       desc: '',
//       args: [],
//     );
//   }
//
//   /// `Leisure`
//   String get leisure {
//     return Intl.message(
//       'Leisure',
//       name: 'leisure',
//       desc: '',
//       args: [],
//     );
//   }
//
//   /// `Restaurant`
//   String get gurume {
//     return Intl.message(
//       'Restaurant',
//       name: 'gurume',
//       desc: '',
//       args: [],
//     );
//   }
//
//   /// `Hotel`
//   String get hotel {
//     return Intl.message(
//       'Hotel',
//       name: 'hotel',
//       desc: '',
//       args: [],
//     );
//   }
//
//   /// `Show Lists`
//   String get lookList {
//     return Intl.message(
//       'Show Lists',
//       name: 'lookList',
//       desc: '',
//       args: [],
//     );
//   }
//
//   /// `List`
//   String get list {
//     return Intl.message(
//       'List',
//       name: 'list',
//       desc: '',
//       args: [],
//     );
//   }
//
//   /// `Map`
//   String get map {
//     return Intl.message(
//       'Map',
//       name: 'map',
//       desc: '',
//       args: [],
//     );
//   }
//
//   /// `New List`
//   String get newList {
//     return Intl.message(
//       'New List',
//       name: 'newList',
//       desc: '',
//       args: [],
//     );
//   }
//
//   /// `Saved List (Editable)`
//   String get editList {
//     return Intl.message(
//       'Saved List (Editable)',
//       name: 'editList',
//       desc: '',
//       args: [],
//     );
//   }
//
//   /// `Place`
//   String get name {
//     return Intl.message(
//       'Place',
//       name: 'name',
//       desc: '',
//       args: [],
//     );
//   }
//
//   /// `Comment`
//   String get comment {
//     return Intl.message(
//       'Comment',
//       name: 'comment',
//       desc: '',
//       args: [],
//     );
//   }
//
//   /// `QR Code`
//   String get qrCord {
//     return Intl.message(
//       'QR Code',
//       name: 'qrCord',
//       desc: '',
//       args: [],
//     );
//   }
//
//   /// `Register`
//   String get register {
//     return Intl.message(
//       'Register',
//       name: 'register',
//       desc: '',
//       args: [],
//     );
//   }
//
//   /// `Back`
//   String get back {
//     return Intl.message(
//       'Back',
//       name: 'back',
//       desc: '',
//       args: [],
//     );
//   }
//
//   /// `Select Area`
//   String get areaSelect {
//     return Intl.message(
//       'Select Area',
//       name: 'areaSelect',
//       desc: '',
//       args: [],
//     );
//   }
//
//   /// `TOHOKU`
//   String get tohoku {
//     return Intl.message(
//       'TOHOKU',
//       name: 'tohoku',
//       desc: '',
//       args: [],
//     );
//   }
//
//   /// `KANTO`
//   String get kanto {
//     return Intl.message(
//       'KANTO',
//       name: 'kanto',
//       desc: '',
//       args: [],
//     );
//   }
//
//   /// `CHUBU`
//   String get tyubu {
//     return Intl.message(
//       'CHUBU',
//       name: 'tyubu',
//       desc: '',
//       args: [],
//     );
//   }
//
//   /// `KINKI`
//   String get kinki {
//     return Intl.message(
//       'KINKI',
//       name: 'kinki',
//       desc: '',
//       args: [],
//     );
//   }
//
//   /// `CHUGOKU`
//   String get tyugoku {
//     return Intl.message(
//       'CHUGOKU',
//       name: 'tyugoku',
//       desc: '',
//       args: [],
//     );
//   }
//
//   /// `SHIKOKU`
//   String get shikoku {
//     return Intl.message(
//       'SHIKOKU',
//       name: 'shikoku',
//       desc: '',
//       args: [],
//     );
//   }
//
//   /// `KYUSHU`
//   String get kyushu {
//     return Intl.message(
//       'KYUSHU',
//       name: 'kyushu',
//       desc: '',
//       args: [],
//     );
//   }
//
//   /// `OTHERS`
//   String get sonota {
//     return Intl.message(
//       'OTHERS',
//       name: 'sonota',
//       desc: '',
//       args: [],
//     );
//   }
//
//   /// `HOKKAIDO`
//   String get hokkaido {
//     return Intl.message(
//       'HOKKAIDO',
//       name: 'hokkaido',
//       desc: '',
//       args: [],
//     );
//   }
//
//   /// `AOMORI`
//   String get aomori {
//     return Intl.message(
//       'AOMORI',
//       name: 'aomori',
//       desc: '',
//       args: [],
//     );
//   }
//
//   /// `IWATE`
//   String get iwate {
//     return Intl.message(
//       'IWATE',
//       name: 'iwate',
//       desc: '',
//       args: [],
//     );
//   }
//
//   /// `AKITA`
//   String get akita {
//     return Intl.message(
//       'AKITA',
//       name: 'akita',
//       desc: '',
//       args: [],
//     );
//   }
//
//   /// `MIYAGI`
//   String get miyagi {
//     return Intl.message(
//       'MIYAGI',
//       name: 'miyagi',
//       desc: '',
//       args: [],
//     );
//   }
//
//   /// `YAMAGATA`
//   String get yamagata {
//     return Intl.message(
//       'YAMAGATA',
//       name: 'yamagata',
//       desc: '',
//       args: [],
//     );
//   }
//
//   /// `FUKUSHIMA`
//   String get fukushima {
//     return Intl.message(
//       'FUKUSHIMA',
//       name: 'fukushima',
//       desc: '',
//       args: [],
//     );
//   }
//
//   /// `GUNMA`
//   String get gunma {
//     return Intl.message(
//       'GUNMA',
//       name: 'gunma',
//       desc: '',
//       args: [],
//     );
//   }
//
//   /// `TOCHIGI`
//   String get tochigi {
//     return Intl.message(
//       'TOCHIGI',
//       name: 'tochigi',
//       desc: '',
//       args: [],
//     );
//   }
//
//   /// `SAITAMA`
//   String get saitama {
//     return Intl.message(
//       'SAITAMA',
//       name: 'saitama',
//       desc: '',
//       args: [],
//     );
//   }
//
//   /// `IBARAKI`
//   String get ibaraki {
//     return Intl.message(
//       'IBARAKI',
//       name: 'ibaraki',
//       desc: '',
//       args: [],
//     );
//   }
//
//   /// `TOKYO`
//   String get tokyo {
//     return Intl.message(
//       'TOKYO',
//       name: 'tokyo',
//       desc: '',
//       args: [],
//     );
//   }
//
//   /// `CHIBA`
//   String get chiba {
//     return Intl.message(
//       'CHIBA',
//       name: 'chiba',
//       desc: '',
//       args: [],
//     );
//   }
//
//   /// `KANAGAWA`
//   String get kanagawa {
//     return Intl.message(
//       'KANAGAWA',
//       name: 'kanagawa',
//       desc: '',
//       args: [],
//     );
//   }
//
//   /// `FUKUI`
//   String get fukui {
//     return Intl.message(
//       'FUKUI',
//       name: 'fukui',
//       desc: '',
//       args: [],
//     );
//   }
//
//   /// `ISHIKAWA`
//   String get ishikawa {
//     return Intl.message(
//       'ISHIKAWA',
//       name: 'ishikawa',
//       desc: '',
//       args: [],
//     );
//   }
//
//   /// `TOYAMA`
//   String get toyama {
//     return Intl.message(
//       'TOYAMA',
//       name: 'toyama',
//       desc: '',
//       args: [],
//     );
//   }
//
//   /// `NIIGATA`
//   String get niigata {
//     return Intl.message(
//       'NIIGATA',
//       name: 'niigata',
//       desc: '',
//       args: [],
//     );
//   }
//
//   /// `GIFU`
//   String get gifu {
//     return Intl.message(
//       'GIFU',
//       name: 'gifu',
//       desc: '',
//       args: [],
//     );
//   }
//
//   /// `NAGANO`
//   String get nagano {
//     return Intl.message(
//       'NAGANO',
//       name: 'nagano',
//       desc: '',
//       args: [],
//     );
//   }
//
//   /// `AICHI`
//   String get aichi {
//     return Intl.message(
//       'AICHI',
//       name: 'aichi',
//       desc: '',
//       args: [],
//     );
//   }
//
//   /// `SHIZUOKA`
//   String get shizuoka {
//     return Intl.message(
//       'SHIZUOKA',
//       name: 'shizuoka',
//       desc: '',
//       args: [],
//     );
//   }
//
//   /// `YAMANASHI`
//   String get yamanashi {
//     return Intl.message(
//       'YAMANASHI',
//       name: 'yamanashi',
//       desc: '',
//       args: [],
//     );
//   }
//
//   /// `HYOGO`
//   String get hyogo {
//     return Intl.message(
//       'HYOGO',
//       name: 'hyogo',
//       desc: '',
//       args: [],
//     );
//   }
//
//   /// `OSAKA`
//   String get osaka {
//     return Intl.message(
//       'OSAKA',
//       name: 'osaka',
//       desc: '',
//       args: [],
//     );
//   }
//
//   /// `KYOTO`
//   String get kyoto {
//     return Intl.message(
//       'KYOTO',
//       name: 'kyoto',
//       desc: '',
//       args: [],
//     );
//   }
//
//   /// `SHIGA`
//   String get shiga {
//     return Intl.message(
//       'SHIGA',
//       name: 'shiga',
//       desc: '',
//       args: [],
//     );
//   }
//
//   /// `WAKAYAMA`
//   String get wakayama {
//     return Intl.message(
//       'WAKAYAMA',
//       name: 'wakayama',
//       desc: '',
//       args: [],
//     );
//   }
//
//   /// `NARA`
//   String get nara {
//     return Intl.message(
//       'NARA',
//       name: 'nara',
//       desc: '',
//       args: [],
//     );
//   }
//
//   /// `MIE`
//   String get mie {
//     return Intl.message(
//       'MIE',
//       name: 'mie',
//       desc: '',
//       args: [],
//     );
//   }
//
//   /// `SHIMANE`
//   String get shimane {
//     return Intl.message(
//       'SHIMANE',
//       name: 'shimane',
//       desc: '',
//       args: [],
//     );
//   }
//
//   /// `TOTTORI`
//   String get tottori {
//     return Intl.message(
//       'TOTTORI',
//       name: 'tottori',
//       desc: '',
//       args: [],
//     );
//   }
//
//   /// `OKAYAMA`
//   String get okayama {
//     return Intl.message(
//       'OKAYAMA',
//       name: 'okayama',
//       desc: '',
//       args: [],
//     );
//   }
//
//   /// `HIROSHIMA`
//   String get hiroshima {
//     return Intl.message(
//       'HIROSHIMA',
//       name: 'hiroshima',
//       desc: '',
//       args: [],
//     );
//   }
//
//   /// `YAMAGUCHI`
//   String get yamaguchi {
//     return Intl.message(
//       'YAMAGUCHI',
//       name: 'yamaguchi',
//       desc: '',
//       args: [],
//     );
//   }
//
//   /// `EHIME`
//   String get ehime {
//     return Intl.message(
//       'EHIME',
//       name: 'ehime',
//       desc: '',
//       args: [],
//     );
//   }
//
//   /// `KAGAWA`
//   String get kagawa {
//     return Intl.message(
//       'KAGAWA',
//       name: 'kagawa',
//       desc: '',
//       args: [],
//     );
//   }
//
//   /// `KOCHI`
//   String get kochi {
//     return Intl.message(
//       'KOCHI',
//       name: 'kochi',
//       desc: '',
//       args: [],
//     );
//   }
//
//   /// `TOKUSHIMA`
//   String get tokushima {
//     return Intl.message(
//       'TOKUSHIMA',
//       name: 'tokushima',
//       desc: '',
//       args: [],
//     );
//   }
//
//   /// `NAGASAKI`
//   String get nagasaki {
//     return Intl.message(
//       'NAGASAKI',
//       name: 'nagasaki',
//       desc: '',
//       args: [],
//     );
//   }
//
//   /// `SAGA`
//   String get saga {
//     return Intl.message(
//       'SAGA',
//       name: 'saga',
//       desc: '',
//       args: [],
//     );
//   }
//
//   /// `KUMAMOTO`
//   String get kumamoto {
//     return Intl.message(
//       'KUMAMOTO',
//       name: 'kumamoto',
//       desc: '',
//       args: [],
//     );
//   }
//
//   /// `OITA`
//   String get oita {
//     return Intl.message(
//       'OITA',
//       name: 'oita',
//       desc: '',
//       args: [],
//     );
//   }
//
//   /// `FUKUOKA`
//   String get fukuoka {
//     return Intl.message(
//       'FUKUOKA',
//       name: 'fukuoka',
//       desc: '',
//       args: [],
//     );
//   }
//
//   /// `MIYAZAKI`
//   String get miyazaki {
//     return Intl.message(
//       'MIYAZAKI',
//       name: 'miyazaki',
//       desc: '',
//       args: [],
//     );
//   }
//
//   /// `KAGOSHIMA`
//   String get kagoshima {
//     return Intl.message(
//       'KAGOSHIMA',
//       name: 'kagoshima',
//       desc: '',
//       args: [],
//     );
//   }
//
//   /// `OKINAWA`
//   String get okinawa {
//     return Intl.message(
//       'OKINAWA',
//       name: 'okinawa',
//       desc: '',
//       args: [],
//     );
//   }
// }
//
// class AppLocalizationDelegate extends LocalizationsDelegate<S> {
//   const AppLocalizationDelegate();
//
//   List<Locale> get supportedLocales {
//     return const <Locale>[
//       Locale.fromSubtags(languageCode: 'en'),
//       Locale.fromSubtags(languageCode: 'ja'),
//     ];
//   }
//
//   @override
//   bool isSupported(Locale locale) => _isSupported(locale);
//   @override
//   Future<S> load(Locale locale) => S.load(locale);
//   @override
//   bool shouldReload(AppLocalizationDelegate old) => false;
//
//   bool _isSupported(Locale locale) {
//     for (var supportedLocale in supportedLocales) {
//       if (supportedLocale.languageCode == locale.languageCode) {
//         return true;
//       }
//     }
//     return false;
//   }
// }
