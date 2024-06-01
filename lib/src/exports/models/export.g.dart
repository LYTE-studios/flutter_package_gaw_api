// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'export.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Export> _$exportSerializer = new _$ExportSerializer();

class _$ExportSerializer implements StructuredSerializer<Export> {
  @override
  final Iterable<Type> types = const [Export, _$Export];
  @override
  final String wireName = 'Export';

  @override
  Iterable<Object?> serialize(Serializers serializers, Export object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'file_url',
      serializers.serialize(object.fileUrl,
          specifiedType: const FullType(String)),
      'created_at',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Export deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ExportBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'file_url':
          result.fileUrl = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Export extends Export {
  @override
  final String name;
  @override
  final String? description;
  @override
  final String fileUrl;
  @override
  final int createdAt;

  factory _$Export([void Function(ExportBuilder)? updates]) =>
      (new ExportBuilder()..update(updates))._build();

  _$Export._(
      {required this.name,
      this.description,
      required this.fileUrl,
      required this.createdAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'Export', 'name');
    BuiltValueNullFieldError.checkNotNull(fileUrl, r'Export', 'fileUrl');
    BuiltValueNullFieldError.checkNotNull(createdAt, r'Export', 'createdAt');
  }

  @override
  Export rebuild(void Function(ExportBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExportBuilder toBuilder() => new ExportBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Export &&
        name == other.name &&
        description == other.description &&
        fileUrl == other.fileUrl &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, fileUrl.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Export')
          ..add('name', name)
          ..add('description', description)
          ..add('fileUrl', fileUrl)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class ExportBuilder implements Builder<Export, ExportBuilder> {
  _$Export? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _fileUrl;
  String? get fileUrl => _$this._fileUrl;
  set fileUrl(String? fileUrl) => _$this._fileUrl = fileUrl;

  int? _createdAt;
  int? get createdAt => _$this._createdAt;
  set createdAt(int? createdAt) => _$this._createdAt = createdAt;

  ExportBuilder();

  ExportBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _fileUrl = $v.fileUrl;
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Export other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Export;
  }

  @override
  void update(void Function(ExportBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Export build() => _build();

  _$Export _build() {
    final _$result = _$v ??
        new _$Export._(
            name:
                BuiltValueNullFieldError.checkNotNull(name, r'Export', 'name'),
            description: description,
            fileUrl: BuiltValueNullFieldError.checkNotNull(
                fileUrl, r'Export', 'fileUrl'),
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'Export', 'createdAt'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
