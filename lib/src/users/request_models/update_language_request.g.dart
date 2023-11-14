// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_language_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UpdateLanguageRequest> _$updateLanguageRequestSerializer =
    new _$UpdateLanguageRequestSerializer();

class _$UpdateLanguageRequestSerializer
    implements StructuredSerializer<UpdateLanguageRequest> {
  @override
  final Iterable<Type> types = const [
    UpdateLanguageRequest,
    _$UpdateLanguageRequest
  ];
  @override
  final String wireName = 'UpdateLanguageRequest';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, UpdateLanguageRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'language',
      serializers.serialize(object.language,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  UpdateLanguageRequest deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UpdateLanguageRequestBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'language':
          result.language = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$UpdateLanguageRequest extends UpdateLanguageRequest {
  @override
  final String language;

  factory _$UpdateLanguageRequest(
          [void Function(UpdateLanguageRequestBuilder)? updates]) =>
      (new UpdateLanguageRequestBuilder()..update(updates))._build();

  _$UpdateLanguageRequest._({required this.language}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        language, r'UpdateLanguageRequest', 'language');
  }

  @override
  UpdateLanguageRequest rebuild(
          void Function(UpdateLanguageRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateLanguageRequestBuilder toBuilder() =>
      new UpdateLanguageRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateLanguageRequest && language == other.language;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, language.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateLanguageRequest')
          ..add('language', language))
        .toString();
  }
}

class UpdateLanguageRequestBuilder
    implements Builder<UpdateLanguageRequest, UpdateLanguageRequestBuilder> {
  _$UpdateLanguageRequest? _$v;

  String? _language;
  String? get language => _$this._language;
  set language(String? language) => _$this._language = language;

  UpdateLanguageRequestBuilder();

  UpdateLanguageRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _language = $v.language;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateLanguageRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateLanguageRequest;
  }

  @override
  void update(void Function(UpdateLanguageRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateLanguageRequest build() => _build();

  _$UpdateLanguageRequest _build() {
    final _$result = _$v ??
        new _$UpdateLanguageRequest._(
            language: BuiltValueNullFieldError.checkNotNull(
                language, r'UpdateLanguageRequest', 'language'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
