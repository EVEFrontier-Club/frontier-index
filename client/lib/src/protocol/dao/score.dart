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

abstract class ScoreDao implements _i1.SerializableModel {
  ScoreDao._({
    this.id,
    required this.playerId,
    required this.scoreType,
    required this.scoreValue,
    required this.components,
    this.rawComponents,
    required this.computedAt,
    required this.confidence,
    this.explanation,
  });

  factory ScoreDao({
    int? id,
    required int playerId,
    required _i2.ScoreTypeDao scoreType,
    required double scoreValue,
    required Map<String, double> components,
    String? rawComponents,
    required DateTime computedAt,
    required double confidence,
    String? explanation,
  }) = _ScoreDaoImpl;

  factory ScoreDao.fromJson(Map<String, dynamic> jsonSerialization) {
    return ScoreDao(
      id: jsonSerialization['id'] as int?,
      playerId: jsonSerialization['playerId'] as int,
      scoreType: _i2.ScoreTypeDao.fromJson(
        (jsonSerialization['scoreType'] as String),
      ),
      scoreValue: (jsonSerialization['scoreValue'] as num).toDouble(),
      components: _i3.Protocol().deserialize<Map<String, double>>(
        jsonSerialization['components'],
      ),
      rawComponents: jsonSerialization['rawComponents'] as String?,
      computedAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['computedAt'],
      ),
      confidence: (jsonSerialization['confidence'] as num).toDouble(),
      explanation: jsonSerialization['explanation'] as String?,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int playerId;

  _i2.ScoreTypeDao scoreType;

  double scoreValue;

  Map<String, double> components;

  String? rawComponents;

  DateTime computedAt;

  double confidence;

  String? explanation;

  /// Returns a shallow copy of this [ScoreDao]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  ScoreDao copyWith({
    int? id,
    int? playerId,
    _i2.ScoreTypeDao? scoreType,
    double? scoreValue,
    Map<String, double>? components,
    String? rawComponents,
    DateTime? computedAt,
    double? confidence,
    String? explanation,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'evefrontier_index_module.ScoreDao',
      if (id != null) 'id': id,
      'playerId': playerId,
      'scoreType': scoreType.toJson(),
      'scoreValue': scoreValue,
      'components': components.toJson(),
      if (rawComponents != null) 'rawComponents': rawComponents,
      'computedAt': computedAt.toJson(),
      'confidence': confidence,
      if (explanation != null) 'explanation': explanation,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ScoreDaoImpl extends ScoreDao {
  _ScoreDaoImpl({
    int? id,
    required int playerId,
    required _i2.ScoreTypeDao scoreType,
    required double scoreValue,
    required Map<String, double> components,
    String? rawComponents,
    required DateTime computedAt,
    required double confidence,
    String? explanation,
  }) : super._(
         id: id,
         playerId: playerId,
         scoreType: scoreType,
         scoreValue: scoreValue,
         components: components,
         rawComponents: rawComponents,
         computedAt: computedAt,
         confidence: confidence,
         explanation: explanation,
       );

  /// Returns a shallow copy of this [ScoreDao]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  ScoreDao copyWith({
    Object? id = _Undefined,
    int? playerId,
    _i2.ScoreTypeDao? scoreType,
    double? scoreValue,
    Map<String, double>? components,
    Object? rawComponents = _Undefined,
    DateTime? computedAt,
    double? confidence,
    Object? explanation = _Undefined,
  }) {
    return ScoreDao(
      id: id is int? ? id : this.id,
      playerId: playerId ?? this.playerId,
      scoreType: scoreType ?? this.scoreType,
      scoreValue: scoreValue ?? this.scoreValue,
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
      rawComponents: rawComponents is String?
          ? rawComponents
          : this.rawComponents,
      computedAt: computedAt ?? this.computedAt,
      confidence: confidence ?? this.confidence,
      explanation: explanation is String? ? explanation : this.explanation,
    );
  }
}
