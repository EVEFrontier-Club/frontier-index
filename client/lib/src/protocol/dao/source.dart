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
import '../dao/source_type.dart' as _i2;

abstract class SourceDao implements _i1.SerializableModel {
  SourceDao._({
    this.id,
    required this.sourceKey,
    required this.type,
    required this.trustLevel,
    this.config,
    this.lastSync,
    required this.enabled,
  });

  factory SourceDao({
    int? id,
    required String sourceKey,
    required _i2.SourceTypeDao type,
    required double trustLevel,
    String? config,
    DateTime? lastSync,
    required bool enabled,
  }) = _SourceDaoImpl;

  factory SourceDao.fromJson(Map<String, dynamic> jsonSerialization) {
    return SourceDao(
      id: jsonSerialization['id'] as int?,
      sourceKey: jsonSerialization['sourceKey'] as String,
      type: _i2.SourceTypeDao.fromJson((jsonSerialization['type'] as String)),
      trustLevel: (jsonSerialization['trustLevel'] as num).toDouble(),
      config: jsonSerialization['config'] as String?,
      lastSync: jsonSerialization['lastSync'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['lastSync']),
      enabled: _i1.BoolJsonExtension.fromJson(jsonSerialization['enabled']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String sourceKey;

  _i2.SourceTypeDao type;

  double trustLevel;

  String? config;

  DateTime? lastSync;

  bool enabled;

  /// Returns a shallow copy of this [SourceDao]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  SourceDao copyWith({
    int? id,
    String? sourceKey,
    _i2.SourceTypeDao? type,
    double? trustLevel,
    String? config,
    DateTime? lastSync,
    bool? enabled,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'evefrontier_index_module.SourceDao',
      if (id != null) 'id': id,
      'sourceKey': sourceKey,
      'type': type.toJson(),
      'trustLevel': trustLevel,
      if (config != null) 'config': config,
      if (lastSync != null) 'lastSync': lastSync?.toJson(),
      'enabled': enabled,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SourceDaoImpl extends SourceDao {
  _SourceDaoImpl({
    int? id,
    required String sourceKey,
    required _i2.SourceTypeDao type,
    required double trustLevel,
    String? config,
    DateTime? lastSync,
    required bool enabled,
  }) : super._(
         id: id,
         sourceKey: sourceKey,
         type: type,
         trustLevel: trustLevel,
         config: config,
         lastSync: lastSync,
         enabled: enabled,
       );

  /// Returns a shallow copy of this [SourceDao]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  SourceDao copyWith({
    Object? id = _Undefined,
    String? sourceKey,
    _i2.SourceTypeDao? type,
    double? trustLevel,
    Object? config = _Undefined,
    Object? lastSync = _Undefined,
    bool? enabled,
  }) {
    return SourceDao(
      id: id is int? ? id : this.id,
      sourceKey: sourceKey ?? this.sourceKey,
      type: type ?? this.type,
      trustLevel: trustLevel ?? this.trustLevel,
      config: config is String? ? config : this.config,
      lastSync: lastSync is DateTime? ? lastSync : this.lastSync,
      enabled: enabled ?? this.enabled,
    );
  }
}
