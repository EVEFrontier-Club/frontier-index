/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters
// ignore_for_file: invalid_use_of_internal_member

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'dao/normalized_metric.dart' as _i2;
import 'dao/player.dart' as _i3;
import 'dao/player_alias.dart' as _i4;
import 'dao/raw_event.dart' as _i5;
import 'dao/score.dart' as _i6;
import 'dao/score_history.dart' as _i7;
import 'dao/score_type.dart' as _i8;
import 'dao/source.dart' as _i9;
import 'dao/source_type.dart' as _i10;
import 'dto/score_type.dart' as _i11;
export 'dao/normalized_metric.dart';
export 'dao/player.dart';
export 'dao/player_alias.dart';
export 'dao/raw_event.dart';
export 'dao/score.dart';
export 'dao/score_history.dart';
export 'dao/score_type.dart';
export 'dao/source.dart';
export 'dao/source_type.dart';
export 'dto/score_type.dart';
export 'client.dart';

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._();

  static String? getClassNameFromObjectJson(dynamic data) {
    if (data is! Map) return null;
    final className = data['__className__'] as String?;
    if (className == null) return null;
    if (!className.startsWith('evefrontier_index_module.')) return className;
    return className.substring(12);
  }

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;

    final dataClassName = getClassNameFromObjectJson(data);
    if (dataClassName != null && dataClassName != getClassNameForType(t)) {
      try {
        return deserializeByClassName({
          'className': dataClassName,
          'data': data,
        });
      } on FormatException catch (_) {
        // If the className is not recognized (e.g., older client receiving
        // data with a new subtype), fall back to deserializing without the
        // className, using the expected type T.
      }
    }

    if (t == _i2.NormalizedMetricDao) {
      return _i2.NormalizedMetricDao.fromJson(data) as T;
    }
    if (t == _i3.PlayerDao) {
      return _i3.PlayerDao.fromJson(data) as T;
    }
    if (t == _i4.PlayerAliasDao) {
      return _i4.PlayerAliasDao.fromJson(data) as T;
    }
    if (t == _i5.RawEventDao) {
      return _i5.RawEventDao.fromJson(data) as T;
    }
    if (t == _i6.ScoreDao) {
      return _i6.ScoreDao.fromJson(data) as T;
    }
    if (t == _i7.ScoreHistoryDao) {
      return _i7.ScoreHistoryDao.fromJson(data) as T;
    }
    if (t == _i8.ScoreTypeDao) {
      return _i8.ScoreTypeDao.fromJson(data) as T;
    }
    if (t == _i9.SourceDao) {
      return _i9.SourceDao.fromJson(data) as T;
    }
    if (t == _i10.SourceTypeDao) {
      return _i10.SourceTypeDao.fromJson(data) as T;
    }
    if (t == _i11.ScoreTypeDto) {
      return _i11.ScoreTypeDto.fromJson(data) as T;
    }
    if (t == _i1.getType<_i2.NormalizedMetricDao?>()) {
      return (data != null ? _i2.NormalizedMetricDao.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i3.PlayerDao?>()) {
      return (data != null ? _i3.PlayerDao.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i4.PlayerAliasDao?>()) {
      return (data != null ? _i4.PlayerAliasDao.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i5.RawEventDao?>()) {
      return (data != null ? _i5.RawEventDao.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i6.ScoreDao?>()) {
      return (data != null ? _i6.ScoreDao.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i7.ScoreHistoryDao?>()) {
      return (data != null ? _i7.ScoreHistoryDao.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i8.ScoreTypeDao?>()) {
      return (data != null ? _i8.ScoreTypeDao.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i9.SourceDao?>()) {
      return (data != null ? _i9.SourceDao.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i10.SourceTypeDao?>()) {
      return (data != null ? _i10.SourceTypeDao.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i11.ScoreTypeDto?>()) {
      return (data != null ? _i11.ScoreTypeDto.fromJson(data) : null) as T;
    }
    if (t == List<int>) {
      return (data as List).map((e) => deserialize<int>(e)).toList() as T;
    }
    if (t == _i1.getType<List<int>?>()) {
      return (data != null
              ? (data as List).map((e) => deserialize<int>(e)).toList()
              : null)
          as T;
    }
    if (t == Map<String, double>) {
      return (data as Map).map(
            (k, v) => MapEntry(deserialize<String>(k), deserialize<double>(v)),
          )
          as T;
    }
    if (t == Map<String, dynamic>) {
      return (data as Map).map(
            (k, v) => MapEntry(deserialize<String>(k), deserialize<dynamic>(v)),
          )
          as T;
    }
    if (t == _i1.getType<Map<String, dynamic>?>()) {
      return (data != null
              ? (data as Map).map(
                  (k, v) =>
                      MapEntry(deserialize<String>(k), deserialize<dynamic>(v)),
                )
              : null)
          as T;
    }
    return super.deserialize<T>(data, t);
  }

  static String? getClassNameForType(Type type) {
    return switch (type) {
      _i2.NormalizedMetricDao => 'NormalizedMetricDao',
      _i3.PlayerDao => 'PlayerDao',
      _i4.PlayerAliasDao => 'PlayerAliasDao',
      _i5.RawEventDao => 'RawEventDao',
      _i6.ScoreDao => 'ScoreDao',
      _i7.ScoreHistoryDao => 'ScoreHistoryDao',
      _i8.ScoreTypeDao => 'ScoreTypeDao',
      _i9.SourceDao => 'SourceDao',
      _i10.SourceTypeDao => 'SourceTypeDao',
      _i11.ScoreTypeDto => 'ScoreTypeDto',
      _ => null,
    };
  }

  @override
  String? getClassNameForObject(Object? data) {
    String? className = super.getClassNameForObject(data);
    if (className != null) return className;

    if (data is Map<String, dynamic> && data['__className__'] is String) {
      return (data['__className__'] as String).replaceFirst(
        'evefrontier_index_module.',
        '',
      );
    }

    switch (data) {
      case _i2.NormalizedMetricDao():
        return 'NormalizedMetricDao';
      case _i3.PlayerDao():
        return 'PlayerDao';
      case _i4.PlayerAliasDao():
        return 'PlayerAliasDao';
      case _i5.RawEventDao():
        return 'RawEventDao';
      case _i6.ScoreDao():
        return 'ScoreDao';
      case _i7.ScoreHistoryDao():
        return 'ScoreHistoryDao';
      case _i8.ScoreTypeDao():
        return 'ScoreTypeDao';
      case _i9.SourceDao():
        return 'SourceDao';
      case _i10.SourceTypeDao():
        return 'SourceTypeDao';
      case _i11.ScoreTypeDto():
        return 'ScoreTypeDto';
    }
    return null;
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    var dataClassName = data['className'];
    if (dataClassName is! String) {
      return super.deserializeByClassName(data);
    }
    if (dataClassName == 'NormalizedMetricDao') {
      return deserialize<_i2.NormalizedMetricDao>(data['data']);
    }
    if (dataClassName == 'PlayerDao') {
      return deserialize<_i3.PlayerDao>(data['data']);
    }
    if (dataClassName == 'PlayerAliasDao') {
      return deserialize<_i4.PlayerAliasDao>(data['data']);
    }
    if (dataClassName == 'RawEventDao') {
      return deserialize<_i5.RawEventDao>(data['data']);
    }
    if (dataClassName == 'ScoreDao') {
      return deserialize<_i6.ScoreDao>(data['data']);
    }
    if (dataClassName == 'ScoreHistoryDao') {
      return deserialize<_i7.ScoreHistoryDao>(data['data']);
    }
    if (dataClassName == 'ScoreTypeDao') {
      return deserialize<_i8.ScoreTypeDao>(data['data']);
    }
    if (dataClassName == 'SourceDao') {
      return deserialize<_i9.SourceDao>(data['data']);
    }
    if (dataClassName == 'SourceTypeDao') {
      return deserialize<_i10.SourceTypeDao>(data['data']);
    }
    if (dataClassName == 'ScoreTypeDto') {
      return deserialize<_i11.ScoreTypeDto>(data['data']);
    }
    return super.deserializeByClassName(data);
  }

  /// Maps any `Record`s known to this [Protocol] to their JSON representation
  ///
  /// Throws in case the record type is not known.
  ///
  /// This method will return `null` (only) for `null` inputs.
  Map<String, dynamic>? mapRecordToJson(Record? record) {
    if (record == null) {
      return null;
    }
    throw Exception('Unsupported record type ${record.runtimeType}');
  }
}
