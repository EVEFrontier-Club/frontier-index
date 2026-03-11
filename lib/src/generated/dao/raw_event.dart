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
import 'package:serverpod/serverpod.dart' as _i1;

abstract class RawEventDao
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
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

  static final t = RawEventDaoTable();

  static const db = RawEventDaoRepository._();

  @override
  int? id;

  String eventUuid;

  int playerId;

  int sourceId;

  String eventType;

  String payload;

  DateTime receivedAt;

  bool processed;

  String? processingError;

  @override
  _i1.Table<int?> get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
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

  static RawEventDaoInclude include() {
    return RawEventDaoInclude._();
  }

  static RawEventDaoIncludeList includeList({
    _i1.WhereExpressionBuilder<RawEventDaoTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<RawEventDaoTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<RawEventDaoTable>? orderByList,
    RawEventDaoInclude? include,
  }) {
    return RawEventDaoIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(RawEventDao.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(RawEventDao.t),
      include: include,
    );
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

class RawEventDaoUpdateTable extends _i1.UpdateTable<RawEventDaoTable> {
  RawEventDaoUpdateTable(super.table);

  _i1.ColumnValue<String, String> eventUuid(String value) => _i1.ColumnValue(
    table.eventUuid,
    value,
  );

  _i1.ColumnValue<int, int> playerId(int value) => _i1.ColumnValue(
    table.playerId,
    value,
  );

  _i1.ColumnValue<int, int> sourceId(int value) => _i1.ColumnValue(
    table.sourceId,
    value,
  );

  _i1.ColumnValue<String, String> eventType(String value) => _i1.ColumnValue(
    table.eventType,
    value,
  );

  _i1.ColumnValue<String, String> payload(String value) => _i1.ColumnValue(
    table.payload,
    value,
  );

  _i1.ColumnValue<DateTime, DateTime> receivedAt(DateTime value) =>
      _i1.ColumnValue(
        table.receivedAt,
        value,
      );

  _i1.ColumnValue<bool, bool> processed(bool value) => _i1.ColumnValue(
    table.processed,
    value,
  );

  _i1.ColumnValue<String, String> processingError(String? value) =>
      _i1.ColumnValue(
        table.processingError,
        value,
      );
}

class RawEventDaoTable extends _i1.Table<int?> {
  RawEventDaoTable({super.tableRelation}) : super(tableName: 'raw_events') {
    updateTable = RawEventDaoUpdateTable(this);
    eventUuid = _i1.ColumnString(
      'eventUuid',
      this,
    );
    playerId = _i1.ColumnInt(
      'playerId',
      this,
    );
    sourceId = _i1.ColumnInt(
      'sourceId',
      this,
    );
    eventType = _i1.ColumnString(
      'eventType',
      this,
    );
    payload = _i1.ColumnString(
      'payload',
      this,
    );
    receivedAt = _i1.ColumnDateTime(
      'receivedAt',
      this,
    );
    processed = _i1.ColumnBool(
      'processed',
      this,
    );
    processingError = _i1.ColumnString(
      'processingError',
      this,
    );
  }

  late final RawEventDaoUpdateTable updateTable;

  late final _i1.ColumnString eventUuid;

  late final _i1.ColumnInt playerId;

  late final _i1.ColumnInt sourceId;

  late final _i1.ColumnString eventType;

  late final _i1.ColumnString payload;

  late final _i1.ColumnDateTime receivedAt;

  late final _i1.ColumnBool processed;

  late final _i1.ColumnString processingError;

  @override
  List<_i1.Column> get columns => [
    id,
    eventUuid,
    playerId,
    sourceId,
    eventType,
    payload,
    receivedAt,
    processed,
    processingError,
  ];
}

class RawEventDaoInclude extends _i1.IncludeObject {
  RawEventDaoInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => RawEventDao.t;
}

class RawEventDaoIncludeList extends _i1.IncludeList {
  RawEventDaoIncludeList._({
    _i1.WhereExpressionBuilder<RawEventDaoTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(RawEventDao.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => RawEventDao.t;
}

class RawEventDaoRepository {
  const RawEventDaoRepository._();

  /// Returns a list of [RawEventDao]s matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order of the items use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// The maximum number of items can be set by [limit]. If no limit is set,
  /// all items matching the query will be returned.
  ///
  /// [offset] defines how many items to skip, after which [limit] (or all)
  /// items are read from the database.
  ///
  /// ```dart
  /// var persons = await Persons.db.find(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.firstName,
  ///   limit: 100,
  /// );
  /// ```
  Future<List<RawEventDao>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RawEventDaoTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<RawEventDaoTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<RawEventDaoTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<RawEventDao>(
      where: where?.call(RawEventDao.t),
      orderBy: orderBy?.call(RawEventDao.t),
      orderByList: orderByList?.call(RawEventDao.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [RawEventDao] matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// [offset] defines how many items to skip, after which the next one will be picked.
  ///
  /// ```dart
  /// var youngestPerson = await Persons.db.findFirstRow(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.age,
  /// );
  /// ```
  Future<RawEventDao?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RawEventDaoTable>? where,
    int? offset,
    _i1.OrderByBuilder<RawEventDaoTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<RawEventDaoTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<RawEventDao>(
      where: where?.call(RawEventDao.t),
      orderBy: orderBy?.call(RawEventDao.t),
      orderByList: orderByList?.call(RawEventDao.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [RawEventDao] by its [id] or null if no such row exists.
  Future<RawEventDao?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<RawEventDao>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [RawEventDao]s in the list and returns the inserted rows.
  ///
  /// The returned [RawEventDao]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  ///
  /// If [ignoreConflicts] is set to `true`, rows that conflict with existing
  /// rows are silently skipped, and only the successfully inserted rows are
  /// returned.
  Future<List<RawEventDao>> insert(
    _i1.Session session,
    List<RawEventDao> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<RawEventDao>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [RawEventDao] and returns the inserted row.
  ///
  /// The returned [RawEventDao] will have its `id` field set.
  Future<RawEventDao> insertRow(
    _i1.Session session,
    RawEventDao row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<RawEventDao>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [RawEventDao]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<RawEventDao>> update(
    _i1.Session session,
    List<RawEventDao> rows, {
    _i1.ColumnSelections<RawEventDaoTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<RawEventDao>(
      rows,
      columns: columns?.call(RawEventDao.t),
      transaction: transaction,
    );
  }

  /// Updates a single [RawEventDao]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<RawEventDao> updateRow(
    _i1.Session session,
    RawEventDao row, {
    _i1.ColumnSelections<RawEventDaoTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<RawEventDao>(
      row,
      columns: columns?.call(RawEventDao.t),
      transaction: transaction,
    );
  }

  /// Updates a single [RawEventDao] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<RawEventDao?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<RawEventDaoUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<RawEventDao>(
      id,
      columnValues: columnValues(RawEventDao.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [RawEventDao]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<RawEventDao>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<RawEventDaoUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<RawEventDaoTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<RawEventDaoTable>? orderBy,
    _i1.OrderByListBuilder<RawEventDaoTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<RawEventDao>(
      columnValues: columnValues(RawEventDao.t.updateTable),
      where: where(RawEventDao.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(RawEventDao.t),
      orderByList: orderByList?.call(RawEventDao.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [RawEventDao]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<RawEventDao>> delete(
    _i1.Session session,
    List<RawEventDao> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<RawEventDao>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [RawEventDao].
  Future<RawEventDao> deleteRow(
    _i1.Session session,
    RawEventDao row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<RawEventDao>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<RawEventDao>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<RawEventDaoTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<RawEventDao>(
      where: where(RawEventDao.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RawEventDaoTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<RawEventDao>(
      where: where?.call(RawEventDao.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [RawEventDao] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<RawEventDaoTable> where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
  }) async {
    return session.db.lockRows<RawEventDao>(
      where: where(RawEventDao.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
