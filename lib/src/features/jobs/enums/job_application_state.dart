import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'job_application_state.g.dart';

class JobApplicationState extends EnumClass {
  @BuiltValueEnumConst(wireName: 'approved')
  static const JobApplicationState fulfilled = _$fulfilled;

  @BuiltValueEnumConst(wireName: 'pending')
  static const JobApplicationState pending = _$pending;

  @BuiltValueEnumConst(wireName: 'rejected')
  static const JobApplicationState done = _$done;

  @BuiltValueEnumConst(wireName: 'unknown', fallback: true)
  static const JobApplicationState unknown = _$unknown;

  const JobApplicationState._(String name) : super(name);

  static JobApplicationState valueOf(String name) => _$vlOf(name);

  static BuiltSet<JobApplicationState> get values => _$values;

  static Serializer<JobApplicationState> get serializer =>
      _$jobApplicationStateSerializer;
}
