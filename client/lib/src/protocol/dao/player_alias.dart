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

abstract class PlayerAliasDao implements _i1.SerializableModel {
  PlayerAliasDao._({
    this.id,
    required this.playerId,
    required this.alias,
    this.sourceId,
    required this.linkedAt,
  });

  factory PlayerAliasDao({
    int? id,
    required int playerId,
    required String alias,
    int? sourceId,
    required DateTime linkedAt,
  }) = _PlayerAliasDaoImpl;

  factory PlayerAliasDao.fromJson(Map<String, dynamic> jsonSerialization) {
    return PlayerAliasDao(
      id: jsonSerialization['id'] as int?,
      playerId: jsonSerialization['playerId'] as int,
      alias: jsonSerialization['alias'] as String,
      sourceId: jsonSerialization['sourceId'] as int?,
      linkedAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['linkedAt'],
      ),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int playerId;

  String alias;

  int? sourceId;

  DateTime linkedAt;

  /// Returns a shallow copy of this [PlayerAliasDao]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  PlayerAliasDao copyWith({
    int? id,
    int? playerId,
    String? alias,
    int? sourceId,
    DateTime? linkedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'evefrontier_index_module.PlayerAliasDao',
      if (id != null) 'id': id,
      'playerId': playerId,
      'alias': alias,
      if (sourceId != null) 'sourceId': sourceId,
      'linkedAt': linkedAt.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PlayerAliasDaoImpl extends PlayerAliasDao {
  _PlayerAliasDaoImpl({
    int? id,
    required int playerId,
    required String alias,
    int? sourceId,
    required DateTime linkedAt,
  }) : super._(
         id: id,
         playerId: playerId,
         alias: alias,
         sourceId: sourceId,
         linkedAt: linkedAt,
       );

  /// Returns a shallow copy of this [PlayerAliasDao]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  PlayerAliasDao copyWith({
    Object? id = _Undefined,
    int? playerId,
    String? alias,
    Object? sourceId = _Undefined,
    DateTime? linkedAt,
  }) {
    return PlayerAliasDao(
      id: id is int? ? id : this.id,
      playerId: playerId ?? this.playerId,
      alias: alias ?? this.alias,
      sourceId: sourceId is int? ? sourceId : this.sourceId,
      linkedAt: linkedAt ?? this.linkedAt,
    );
  }
}
