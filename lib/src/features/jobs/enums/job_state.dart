import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'job_state.g.dart';

class JobState extends EnumClass {
  @BuiltValueEnumConst(wireName: 'fulfilled')
  static const JobState fulfilled = _$fulfilled;

  @BuiltValueEnumConst(wireName: 'pending')
  static const JobState pending = _$pending;

  @BuiltValueEnumConst(wireName: 'done')
  static const JobState done = _$done;

  @BuiltValueEnumConst(wireName: 'cancelled')
  static const JobState cancelled = _$cancelled;

  @BuiltValueEnumConst(wireName: 'unknown', fallback: true)
  static const JobState unknown = _$unknown;

  const JobState._(String name) : super(name);

  static JobState valueOf(String name) => _$vlOf(name);

  static BuiltSet<JobState> get values => _$values;

  static Serializer<JobState> get serializer => _$jobStateSerializer;
}
