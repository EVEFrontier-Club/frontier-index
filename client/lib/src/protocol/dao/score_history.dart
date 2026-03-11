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
import '../dao/score_type.dart' as _i2;
import 'package:evefrontier_index_module_client/src/protocol/protocol.dart'
    as _i3;

abstract class ScoreHistoryDao implements _i1.SerializableModel {
  ScoreHistoryDao._({
    this.id,
    required this.playerId,
    required this.scoreType,
    required this.scoreValue,
    required this.computedAt,
    required this.components,
  });

  factory ScoreHistoryDao({
    int? id,
    required int playerId,
    required _i2.ScoreTypeDao scoreType,
    required double scoreValue,
    required DateTime computedAt,
    required Map<String, double> components,
  }) = _ScoreHistoryDaoImpl;

  factory ScoreHistoryDao.fromJson(Map<String, dynamic> jsonSerialization) {
    return ScoreHistoryDao(
      id: jsonSerialization['id'] as int?,
      playerId: jsonSerialization['playerId'] as int,
      scoreType: _i2.ScoreTypeDao.fromJson(
        (jsonSerialization['scoreType'] as String),
      ),
      scoreValue: (jsonSerialization['scoreValue'] as num).toDouble(),
      computedAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['computedAt'],
      ),
      components: _i3.Protocol().deserialize<Map<String, double>>(
        jsonSerialization['components'],
      ),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int playerId;

  _i2.ScoreTypeDao scoreType;

  double scoreValue;

  DateTime computedAt;

  Map<String, double> components;

  /// Returns a shallow copy of this [ScoreHistoryDao]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  ScoreHistoryDao copyWith({
    int? id,
    int? playerId,
    _i2.ScoreTypeDao? scoreType,
    double? scoreValue,
    DateTime? computedAt,
    Map<String, double>? components,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'evefrontier_index_module.ScoreHistoryDao',
      if (id != null) 'id': id,
      'playerId': playerId,
      'scoreType': scoreType.toJson(),
      'scoreValue': scoreValue,
      'computedAt': computedAt.toJson(),
      'components': components.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ScoreHistoryDaoImpl extends ScoreHistoryDao {
  _ScoreHistoryDaoImpl({
    int? id,
    required int playerId,
    required _i2.ScoreTypeDao scoreType,
    required double scoreValue,
    required DateTime computedAt,
    required Map<String, double> components,
  }) : super._(
         id: id,
         playerId: playerId,
         scoreType: scoreType,
         scoreValue: scoreValue,
         computedAt: computedAt,
         components: components,
       );

  /// Returns a shallow copy of this [ScoreHistoryDao]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  ScoreHistoryDao copyWith({
    Object? id = _Undefined,
    int? playerId,
    _i2.ScoreTypeDao? scoreType,
    double? scoreValue,
    DateTime? computedAt,
    Map<String, double>? components,
  }) {
    return ScoreHistoryDao(
      id: id is int? ? id : this.id,
      playerId: playerId ?? this.playerId,
      scoreType: scoreType ?? this.scoreType,
      scoreValue: scoreValue ?? this.scoreValue,
      computedAt: computedAt ?? this.computedAt,
      components:
          components ??
          this.components.map(
            (
              key0,
              value0,
            ) => MapEntry(
              key0,
              value0,
            ),
          ),
    );
  }
}
