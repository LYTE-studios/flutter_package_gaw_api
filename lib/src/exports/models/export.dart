library export;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gaw_api/gaw_api.dart';

part 'export.g.dart';

abstract class Export implements Built<Export, ExportBuilder> {
  Export._();

  factory Export([Function(ExportBuilder b) updates]) = _$Export;

  @BuiltValueField(wireName: 'name')
  String get name;

  @BuiltValueField(wireName: 'description')
  String? get description;

  @BuiltValueField(wireName: 'file_url')
  String get fileUrl;

  @BuiltValueField(wireName: 'file_name')
  String get fileName;

  @BuiltValueField(wireName: 'created_at')
  int get createdAt;

  String toJson() {
    return json.encode(
      serializers.serializeWith(Export.serializer, this),
    );
  }

  static Export? fromJson(Map<String, dynamic> data) {
    return serializers.deserializeWith(
      Export.serializer,
      data,
    );
  }

  static Serializer<Export> get serializer => _$exportSerializer;
}
