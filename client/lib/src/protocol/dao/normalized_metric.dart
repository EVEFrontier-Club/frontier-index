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
import 'package:evefrontier_index_module_client/src/protocol/protocol.dart'
    as _i2;

abstract class NormalizedMetricDao implements _i1.SerializableModel {
  NormalizedMetricDao._({
    this.id,
    required this.playerId,
    required this.metricKey,
    this.rawValue,
    this.normalizedValue,
    this.unit,
    required this.computedAt,
    required this.confidence,
    this.sourceKeys,
    this.details,
  });

  factory NormalizedMetricDao({
    int? id,
    required int playerId,
    required String metricKey,
    double? rawValue,
    double? normalizedValue,
    String? unit,
    required DateTime computedAt,
    required double confidence,
    List<int>? sourceKeys,
    String? details,
  }) = _NormalizedMetricDaoImpl;

  factory NormalizedMetricDao.fromJson(Map<String, dynamic> jsonSerialization) {
    return NormalizedMetricDao(
      id: jsonSerialization['id'] as int?,
      playerId: jsonSerialization['playerId'] as int,
      metricKey: jsonSerialization['metricKey'] as String,
      rawValue: (jsonSerialization['rawValue'] as num?)?.toDouble(),
      normalizedValue: (jsonSerialization['normalizedValue'] as num?)
          ?.toDouble(),
      unit: jsonSerialization['unit'] as String?,
      computedAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['computedAt'],
      ),
      confidence: (jsonSerialization['confidence'] as num).toDouble(),
      sourceKeys: jsonSerialization['sourceKeys'] == null
          ? null
          : _i2.Protocol().deserialize<List<int>>(
              jsonSerialization['sourceKeys'],
            ),
      details: jsonSerialization['details'] as String?,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int playerId;

  String metricKey;

  double? rawValue;

  double? normalizedValue;

  String? unit;

  DateTime computedAt;

  double confidence;

  List<int>? sourceKeys;

  String? details;

  /// Returns a shallow copy of this [NormalizedMetricDao]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  NormalizedMetricDao copyWith({
    int? id,
    int? playerId,
    String? metricKey,
    double? rawValue,
    double? normalizedValue,
    String? unit,
    DateTime? computedAt,
    double? confidence,
    List<int>? sourceKeys,
    String? details,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'evefrontier_index_module.NormalizedMetricDao',
      if (id != null) 'id': id,
      'playerId': playerId,
      'metricKey': metricKey,
      if (rawValue != null) 'rawValue': rawValue,
      if (normalizedValue != null) 'normalizedValue': normalizedValue,
      if (unit != null) 'unit': unit,
      'computedAt': computedAt.toJson(),
      'confidence': confidence,
      if (sourceKeys != null) 'sourceKeys': sourceKeys?.toJson(),
      if (details != null) 'details': details,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _NormalizedMetricDaoImpl extends NormalizedMetricDao {
  _NormalizedMetricDaoImpl({
    int? id,
    required int playerId,
    required String metricKey,
    double? rawValue,
    double? normalizedValue,
    String? unit,
    required DateTime computedAt,
    required double confidence,
    List<int>? sourceKeys,
    String? details,
  }) : super._(
         id: id,
         playerId: playerId,
         metricKey: metricKey,
         rawValue: rawValue,
         normalizedValue: normalizedValue,
         unit: unit,
         computedAt: computedAt,
         confidence: confidence,
         sourceKeys: sourceKeys,
         details: details,
       );

  /// Returns a shallow copy of this [NormalizedMetricDao]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  NormalizedMetricDao copyWith({
    Object? id = _Undefined,
    int? playerId,
    String? metricKey,
    Object? rawValue = _Undefined,
    Object? normalizedValue = _Undefined,
    Object? unit = _Undefined,
    DateTime? computedAt,
    double? confidence,
    Object? sourceKeys = _Undefined,
    Object? details = _Undefined,
  }) {
    return NormalizedMetricDao(
      id: id is int? ? id : this.id,
      playerId: playerId ?? this.playerId,
      metricKey: metricKey ?? this.metricKey,
      rawValue: rawValue is double? ? rawValue : this.rawValue,
      normalizedValue: normalizedValue is double?
          ? normalizedValue
          : this.normalizedValue,
      unit: unit is String? ? unit : this.unit,
      computedAt: computedAt ?? this.computedAt,
      confidence: confidence ?? this.confidence,
      sourceKeys: sourceKeys is List<int>?
          ? sourceKeys
          : this.sourceKeys?.map((e0) => e0).toList(),
      details: details is String? ? details : this.details,
    );
  }
}
