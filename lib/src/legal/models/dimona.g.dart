// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dimona.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Dimona> _$dimonaSerializer = new _$DimonaSerializer();

class _$DimonaSerializer implements StructuredSerializer<Dimona> {
  @override
  final Iterable<Type> types = const [Dimona, _$Dimona];
  @override
  final String wireName = 'Dimona';

  @override
  Iterable<Object?> serialize(Serializers serializers, Dimona object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'application',
      serializers.serialize(object.application,
          specifiedType: const FullType(JobApplication)),
    ];
    Object? value;
    value = object.success;
    if (value != null) {
      result
        ..add('success')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
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
  Dimona deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DimonaBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'application':
          result.application.replace(serializers.deserialize(value,
                  specifiedType: const FullType(JobApplication))!
              as JobApplication);
          break;
        case 'success':
          result.success = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Dimona extends Dimona {
  @override
  final String id;
  @override
  final JobApplication application;
  @override
  final bool? success;
  @override
  final String? description;

  factory _$Dimona([void Function(DimonaBuilder)? updates]) =>
      (new DimonaBuilder()..update(updates))._build();

  _$Dimona._(
      {required this.id,
      required this.application,
      this.success,
      this.description})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'Dimona', 'id');
    BuiltValueNullFieldError.checkNotNull(
        application, r'Dimona', 'application');
  }

  @override
  Dimona rebuild(void Function(DimonaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DimonaBuilder toBuilder() => new DimonaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Dimona &&
        id == other.id &&
        application == other.application &&
        success == other.success &&
        description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, application.hashCode);
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Dimona')
          ..add('id', id)
          ..add('application', application)
          ..add('success', success)
          ..add('description', description))
        .toString();
  }
}

class DimonaBuilder implements Builder<Dimona, DimonaBuilder> {
  _$Dimona? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  JobApplicationBuilder? _application;
  JobApplicationBuilder get application =>
      _$this._application ??= new JobApplicationBuilder();
  set application(JobApplicationBuilder? application) =>
      _$this._application = application;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  DimonaBuilder();

  DimonaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _application = $v.application.toBuilder();
      _success = $v.success;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Dimona other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Dimona;
  }

  @override
  void update(void Function(DimonaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Dimona build() => _build();

  _$Dimona _build() {
    _$Dimona _$result;
    try {
      _$result = _$v ??
          new _$Dimona._(
              id: BuiltValueNullFieldError.checkNotNull(id, r'Dimona', 'id'),
              application: application.build(),
              success: success,
              description: description);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'application';
        application.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Dimona', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
