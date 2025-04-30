// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Tag> _$tagSerializer = new _$TagSerializer();

class _$TagSerializer implements StructuredSerializer<Tag> {
  @override
  final Iterable<Type> types = const [Tag, _$Tag];
  @override
  final String wireName = 'Tag';

  @override
  Iterable<Object?> serialize(Serializers serializers, Tag object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'color',
      serializers.serialize(object.color,
          specifiedType: const FullType(String)),
      'icon',
      serializers.serialize(object.icon, specifiedType: const FullType(String)),
      'special_committee',
      serializers.serialize(object.specialCommittee,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Tag deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TagBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'color':
          result.color = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'icon':
          result.icon = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'special_committee':
          result.specialCommittee = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Tag extends Tag {
  @override
  final int? id;
  @override
  final String title;
  @override
  final String color;
  @override
  final String icon;
  @override
  final String specialCommittee;

  factory _$Tag([void Function(TagBuilder)? updates]) =>
      (new TagBuilder()..update(updates))._build();

  _$Tag._(
      {this.id,
      required this.title,
      required this.color,
      required this.icon,
      required this.specialCommittee})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(title, r'Tag', 'title');
    BuiltValueNullFieldError.checkNotNull(color, r'Tag', 'color');
    BuiltValueNullFieldError.checkNotNull(icon, r'Tag', 'icon');
    BuiltValueNullFieldError.checkNotNull(
        specialCommittee, r'Tag', 'specialCommittee');
  }

  @override
  Tag rebuild(void Function(TagBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TagBuilder toBuilder() => new TagBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Tag &&
        id == other.id &&
        title == other.title &&
        color == other.color &&
        icon == other.icon &&
        specialCommittee == other.specialCommittee;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, color.hashCode);
    _$hash = $jc(_$hash, icon.hashCode);
    _$hash = $jc(_$hash, specialCommittee.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Tag')
          ..add('id', id)
          ..add('title', title)
          ..add('color', color)
          ..add('icon', icon)
          ..add('specialCommittee', specialCommittee))
        .toString();
  }
}

class TagBuilder implements Builder<Tag, TagBuilder> {
  _$Tag? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _color;
  String? get color => _$this._color;
  set color(String? color) => _$this._color = color;

  String? _icon;
  String? get icon => _$this._icon;
  set icon(String? icon) => _$this._icon = icon;

  String? _specialCommittee;
  String? get specialCommittee => _$this._specialCommittee;
  set specialCommittee(String? specialCommittee) =>
      _$this._specialCommittee = specialCommittee;

  TagBuilder();

  TagBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _title = $v.title;
      _color = $v.color;
      _icon = $v.icon;
      _specialCommittee = $v.specialCommittee;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Tag other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Tag;
  }

  @override
  void update(void Function(TagBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Tag build() => _build();

  _$Tag _build() {
    final _$result = _$v ??
        new _$Tag._(
            id: id,
            title:
                BuiltValueNullFieldError.checkNotNull(title, r'Tag', 'title'),
            color:
                BuiltValueNullFieldError.checkNotNull(color, r'Tag', 'color'),
            icon: BuiltValueNullFieldError.checkNotNull(icon, r'Tag', 'icon'),
            specialCommittee: BuiltValueNullFieldError.checkNotNull(
                specialCommittee, r'Tag', 'specialCommittee'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
