// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Place extends DataClass implements Insertable<Place> {
  final String strName;
  final String strComment;
  final String strCategory;
  Place(
      {required this.strName,
      required this.strComment,
      required this.strCategory});
  factory Place.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Place(
      strName: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}str_name'])!,
      strComment: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}str_comment'])!,
      strCategory: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}str_category'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['str_name'] = Variable<String>(strName);
    map['str_comment'] = Variable<String>(strComment);
    map['str_category'] = Variable<String>(strCategory);
    return map;
  }

  PlacesCompanion toCompanion(bool nullToAbsent) {
    return PlacesCompanion(
      strName: Value(strName),
      strComment: Value(strComment),
      strCategory: Value(strCategory),
    );
  }

  factory Place.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Place(
      strName: serializer.fromJson<String>(json['strName']),
      strComment: serializer.fromJson<String>(json['strComment']),
      strCategory: serializer.fromJson<String>(json['strCategory']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'strName': serializer.toJson<String>(strName),
      'strComment': serializer.toJson<String>(strComment),
      'strCategory': serializer.toJson<String>(strCategory),
    };
  }

  Place copyWith({String? strName, String? strComment, String? strCategory}) =>
      Place(
        strName: strName ?? this.strName,
        strComment: strComment ?? this.strComment,
        strCategory: strCategory ?? this.strCategory,
      );
  @override
  String toString() {
    return (StringBuffer('Place(')
          ..write('strName: $strName, ')
          ..write('strComment: $strComment, ')
          ..write('strCategory: $strCategory')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(strName, strComment, strCategory);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Place &&
          other.strName == this.strName &&
          other.strComment == this.strComment &&
          other.strCategory == this.strCategory);
}

class PlacesCompanion extends UpdateCompanion<Place> {
  final Value<String> strName;
  final Value<String> strComment;
  final Value<String> strCategory;
  const PlacesCompanion({
    this.strName = const Value.absent(),
    this.strComment = const Value.absent(),
    this.strCategory = const Value.absent(),
  });
  PlacesCompanion.insert({
    required String strName,
    required String strComment,
    required String strCategory,
  })  : strName = Value(strName),
        strComment = Value(strComment),
        strCategory = Value(strCategory);
  static Insertable<Place> custom({
    Expression<String>? strName,
    Expression<String>? strComment,
    Expression<String>? strCategory,
  }) {
    return RawValuesInsertable({
      if (strName != null) 'str_name': strName,
      if (strComment != null) 'str_comment': strComment,
      if (strCategory != null) 'str_category': strCategory,
    });
  }

  PlacesCompanion copyWith(
      {Value<String>? strName,
      Value<String>? strComment,
      Value<String>? strCategory}) {
    return PlacesCompanion(
      strName: strName ?? this.strName,
      strComment: strComment ?? this.strComment,
      strCategory: strCategory ?? this.strCategory,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (strName.present) {
      map['str_name'] = Variable<String>(strName.value);
    }
    if (strComment.present) {
      map['str_comment'] = Variable<String>(strComment.value);
    }
    if (strCategory.present) {
      map['str_category'] = Variable<String>(strCategory.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PlacesCompanion(')
          ..write('strName: $strName, ')
          ..write('strComment: $strComment, ')
          ..write('strCategory: $strCategory')
          ..write(')'))
        .toString();
  }
}

class $PlacesTable extends Places with TableInfo<$PlacesTable, Place> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PlacesTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _strNameMeta = const VerificationMeta('strName');
  @override
  late final GeneratedColumn<String?> strName = GeneratedColumn<String?>(
      'str_name', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _strCommentMeta = const VerificationMeta('strComment');
  @override
  late final GeneratedColumn<String?> strComment = GeneratedColumn<String?>(
      'str_comment', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _strCategoryMeta =
      const VerificationMeta('strCategory');
  @override
  late final GeneratedColumn<String?> strCategory = GeneratedColumn<String?>(
      'str_category', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [strName, strComment, strCategory];
  @override
  String get aliasedName => _alias ?? 'places';
  @override
  String get actualTableName => 'places';
  @override
  VerificationContext validateIntegrity(Insertable<Place> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('str_name')) {
      context.handle(_strNameMeta,
          strName.isAcceptableOrUnknown(data['str_name']!, _strNameMeta));
    } else if (isInserting) {
      context.missing(_strNameMeta);
    }
    if (data.containsKey('str_comment')) {
      context.handle(
          _strCommentMeta,
          strComment.isAcceptableOrUnknown(
              data['str_comment']!, _strCommentMeta));
    } else if (isInserting) {
      context.missing(_strCommentMeta);
    }
    if (data.containsKey('str_category')) {
      context.handle(
          _strCategoryMeta,
          strCategory.isAcceptableOrUnknown(
              data['str_category']!, _strCategoryMeta));
    } else if (isInserting) {
      context.missing(_strCategoryMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {strName};
  @override
  Place map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Place.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $PlacesTable createAlias(String alias) {
    return $PlacesTable(attachedDatabase, alias);
  }
}

abstract class _$MyDatabase extends GeneratedDatabase {
  _$MyDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $PlacesTable places = $PlacesTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [places];
}
