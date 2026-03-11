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

abstract class PlayerDao implements _i1.SerializableModel {
  PlayerDao._({
    this.id,
    required this.playerId,
    required this.displayName,
    required this.createdAt,
    this.lastSeen,
    required this.metadata,
  });

  factory PlayerDao({
    int? id,
    required String playerId,
    required String displayName,
    required DateTime createdAt,
    DateTime? lastSeen,
    required String metadata,
  }) = _PlayerDaoImpl;

  factory PlayerDao.fromJson(Map<String, dynamic> jsonSerialization) {
    return PlayerDao(
      id: jsonSerialization['id'] as int?,
      playerId: jsonSerialization['playerId'] as String,
      displayName: jsonSerialization['displayName'] as String,
      createdAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
      lastSeen: jsonSerialization['lastSeen'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['lastSeen']),
      metadata: jsonSerialization['metadata'] as String,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String playerId;

  String displayName;

  DateTime createdAt;

  DateTime? lastSeen;

  String metadata;

  /// Returns a shallow copy of this [PlayerDao]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  PlayerDao copyWith({
    int? id,
    String? playerId,
    String? displayName,
    DateTime? createdAt,
    DateTime? lastSeen,
    String? metadata,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'evefrontier_index_module.PlayerDao',
      if (id != null) 'id': id,
      'playerId': playerId,
      'displayName': displayName,
      'createdAt': createdAt.toJson(),
      if (lastSeen != null) 'lastSeen': lastSeen?.toJson(),
      'metadata': metadata,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PlayerDaoImpl extends PlayerDao {
  _PlayerDaoImpl({
    int? id,
    required String playerId,
    required String displayName,
    required DateTime createdAt,
    DateTime? lastSeen,
    required String metadata,
  }) : super._(
         id: id,
         playerId: playerId,
         displayName: displayName,
         createdAt: createdAt,
         lastSeen: lastSeen,
         metadata: metadata,
       );

  /// Returns a shallow copy of this [PlayerDao]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  PlayerDao copyWith({
    Object? id = _Undefined,
    String? playerId,
    String? displayName,
    DateTime? createdAt,
    Object? lastSeen = _Undefined,
    String? metadata,
  }) {
    return PlayerDao(
      id: id is int? ? id : this.id,
      playerId: playerId ?? this.playerId,
      displayName: displayName ?? this.displayName,
      createdAt: createdAt ?? this.createdAt,
      lastSeen: lastSeen is DateTime? ? lastSeen : this.lastSeen,
      metadata: metadata ?? this.metadata,
    );
  }
}
