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

abstract class RawEventDao implements _i1.SerializableModel {
  RawEventDao._({
    this.id,
    required this.eventUuid,
    required this.playerId,
    required this.sourceId,
    required this.eventType,
    required this.payload,
    required this.receivedAt,
    required this.processed,
    this.processingError,
  });

  factory RawEventDao({
    int? id,
    required String eventUuid,
    required int playerId,
    required int sourceId,
    required String eventType,
    required String payload,
    required DateTime receivedAt,
    required bool processed,
    String? processingError,
  }) = _RawEventDaoImpl;

  factory RawEventDao.fromJson(Map<String, dynamic> jsonSerialization) {
    return RawEventDao(
      id: jsonSerialization['id'] as int?,
      eventUuid: jsonSerialization['eventUuid'] as String,
      playerId: jsonSerialization['playerId'] as int,
      sourceId: jsonSerialization['sourceId'] as int,
      eventType: jsonSerialization['eventType'] as String,
      payload: jsonSerialization['payload'] as String,
      receivedAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['receivedAt'],
      ),
      processed: _i1.BoolJsonExtension.fromJson(jsonSerialization['processed']),
      processingError: jsonSerialization['processingError'] as String?,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String eventUuid;

  int playerId;

  int sourceId;

  String eventType;

  String payload;

  DateTime receivedAt;

  bool processed;

  String? processingError;

  /// Returns a shallow copy of this [RawEventDao]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  RawEventDao copyWith({
    int? id,
    String? eventUuid,
    int? playerId,
    int? sourceId,
    String? eventType,
    String? payload,
    DateTime? receivedAt,
    bool? processed,
    String? processingError,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'evefrontier_index_module.RawEventDao',
      if (id != null) 'id': id,
      'eventUuid': eventUuid,
      'playerId': playerId,
      'sourceId': sourceId,
      'eventType': eventType,
      'payload': payload,
      'receivedAt': receivedAt.toJson(),
      'processed': processed,
      if (processingError != null) 'processingError': processingError,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _RawEventDaoImpl extends RawEventDao {
  _RawEventDaoImpl({
    int? id,
    required String eventUuid,
    required int playerId,
    required int sourceId,
    required String eventType,
    required String payload,
    required DateTime receivedAt,
    required bool processed,
    String? processingError,
  }) : super._(
         id: id,
         eventUuid: eventUuid,
         playerId: playerId,
         sourceId: sourceId,
         eventType: eventType,
         payload: payload,
         receivedAt: receivedAt,
         processed: processed,
         processingError: processingError,
       );

  /// Returns a shallow copy of this [RawEventDao]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  RawEventDao copyWith({
    Object? id = _Undefined,
    String? eventUuid,
    int? playerId,
    int? sourceId,
    String? eventType,
    String? payload,
    DateTime? receivedAt,
    bool? processed,
    Object? processingError = _Undefined,
  }) {
    return RawEventDao(
      id: id is int? ? id : this.id,
      eventUuid: eventUuid ?? this.eventUuid,
      playerId: playerId ?? this.playerId,
      sourceId: sourceId ?? this.sourceId,
      eventType: eventType ?? this.eventType,
      payload: payload ?? this.payload,
      receivedAt: receivedAt ?? this.receivedAt,
      processed: processed ?? this.processed,
      processingError: processingError is String?
          ? processingError
          : this.processingError,
    );
  }
}
