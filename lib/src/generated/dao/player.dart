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

abstract class PlayerDao
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
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

  static final t = PlayerDaoTable();

  static const db = PlayerDaoRepository._();

  @override
  int? id;

  String playerId;

  String displayName;

  DateTime createdAt;

  DateTime? lastSeen;

  String metadata;

  @override
  _i1.Table<int?> get table => t;

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
      '__className__': 'trust_index.PlayerDao',
      if (id != null) 'id': id,
      'playerId': playerId,
      'displayName': displayName,
      'createdAt': createdAt.toJson(),
      if (lastSeen != null) 'lastSeen': lastSeen?.toJson(),
      'metadata': metadata,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'trust_index.PlayerDao',
      if (id != null) 'id': id,
      'playerId': playerId,
      'displayName': displayName,
      'createdAt': createdAt.toJson(),
      if (lastSeen != null) 'lastSeen': lastSeen?.toJson(),
      'metadata': metadata,
    };
  }

  static PlayerDaoInclude include() {
    return PlayerDaoInclude._();
  }

  static PlayerDaoIncludeList includeList({
    _i1.WhereExpressionBuilder<PlayerDaoTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PlayerDaoTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PlayerDaoTable>? orderByList,
    PlayerDaoInclude? include,
  }) {
    return PlayerDaoIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PlayerDao.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(PlayerDao.t),
      include: include,
    );
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

class PlayerDaoUpdateTable extends _i1.UpdateTable<PlayerDaoTable> {
  PlayerDaoUpdateTable(super.table);

  _i1.ColumnValue<String, String> playerId(String value) => _i1.ColumnValue(
    table.playerId,
    value,
  );

  _i1.ColumnValue<String, String> displayName(String value) => _i1.ColumnValue(
    table.displayName,
    value,
  );

  _i1.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _i1.ColumnValue(
        table.createdAt,
        value,
      );

  _i1.ColumnValue<DateTime, DateTime> lastSeen(DateTime? value) =>
      _i1.ColumnValue(
        table.lastSeen,
        value,
      );

  _i1.ColumnValue<String, String> metadata(String value) => _i1.ColumnValue(
    table.metadata,
    value,
  );
}

class PlayerDaoTable extends _i1.Table<int?> {
  PlayerDaoTable({super.tableRelation}) : super(tableName: 'players') {
    updateTable = PlayerDaoUpdateTable(this);
    playerId = _i1.ColumnString(
      'playerId',
      this,
    );
    displayName = _i1.ColumnString(
      'displayName',
      this,
    );
    createdAt = _i1.ColumnDateTime(
      'createdAt',
      this,
    );
    lastSeen = _i1.ColumnDateTime(
      'lastSeen',
      this,
    );
    metadata = _i1.ColumnString(
      'metadata',
      this,
    );
  }

  late final PlayerDaoUpdateTable updateTable;

  late final _i1.ColumnString playerId;

  late final _i1.ColumnString displayName;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime lastSeen;

  late final _i1.ColumnString metadata;

  @override
  List<_i1.Column> get columns => [
    id,
    playerId,
    displayName,
    createdAt,
    lastSeen,
    metadata,
  ];
}

class PlayerDaoInclude extends _i1.IncludeObject {
  PlayerDaoInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => PlayerDao.t;
}

class PlayerDaoIncludeList extends _i1.IncludeList {
  PlayerDaoIncludeList._({
    _i1.WhereExpressionBuilder<PlayerDaoTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(PlayerDao.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => PlayerDao.t;
}

class PlayerDaoRepository {
  const PlayerDaoRepository._();

  /// Returns a list of [PlayerDao]s matching the given query parameters.
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
  Future<List<PlayerDao>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PlayerDaoTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PlayerDaoTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PlayerDaoTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<PlayerDao>(
      where: where?.call(PlayerDao.t),
      orderBy: orderBy?.call(PlayerDao.t),
      orderByList: orderByList?.call(PlayerDao.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [PlayerDao] matching the given query parameters.
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
  Future<PlayerDao?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PlayerDaoTable>? where,
    int? offset,
    _i1.OrderByBuilder<PlayerDaoTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PlayerDaoTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<PlayerDao>(
      where: where?.call(PlayerDao.t),
      orderBy: orderBy?.call(PlayerDao.t),
      orderByList: orderByList?.call(PlayerDao.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [PlayerDao] by its [id] or null if no such row exists.
  Future<PlayerDao?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<PlayerDao>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [PlayerDao]s in the list and returns the inserted rows.
  ///
  /// The returned [PlayerDao]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  ///
  /// If [ignoreConflicts] is set to `true`, rows that conflict with existing
  /// rows are silently skipped, and only the successfully inserted rows are
  /// returned.
  Future<List<PlayerDao>> insert(
    _i1.Session session,
    List<PlayerDao> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<PlayerDao>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [PlayerDao] and returns the inserted row.
  ///
  /// The returned [PlayerDao] will have its `id` field set.
  Future<PlayerDao> insertRow(
    _i1.Session session,
    PlayerDao row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<PlayerDao>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [PlayerDao]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<PlayerDao>> update(
    _i1.Session session,
    List<PlayerDao> rows, {
    _i1.ColumnSelections<PlayerDaoTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<PlayerDao>(
      rows,
      columns: columns?.call(PlayerDao.t),
      transaction: transaction,
    );
  }

  /// Updates a single [PlayerDao]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<PlayerDao> updateRow(
    _i1.Session session,
    PlayerDao row, {
    _i1.ColumnSelections<PlayerDaoTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<PlayerDao>(
      row,
      columns: columns?.call(PlayerDao.t),
      transaction: transaction,
    );
  }

  /// Updates a single [PlayerDao] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<PlayerDao?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<PlayerDaoUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<PlayerDao>(
      id,
      columnValues: columnValues(PlayerDao.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [PlayerDao]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<PlayerDao>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<PlayerDaoUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<PlayerDaoTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PlayerDaoTable>? orderBy,
    _i1.OrderByListBuilder<PlayerDaoTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<PlayerDao>(
      columnValues: columnValues(PlayerDao.t.updateTable),
      where: where(PlayerDao.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PlayerDao.t),
      orderByList: orderByList?.call(PlayerDao.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [PlayerDao]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<PlayerDao>> delete(
    _i1.Session session,
    List<PlayerDao> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<PlayerDao>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [PlayerDao].
  Future<PlayerDao> deleteRow(
    _i1.Session session,
    PlayerDao row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<PlayerDao>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<PlayerDao>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PlayerDaoTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<PlayerDao>(
      where: where(PlayerDao.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PlayerDaoTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<PlayerDao>(
      where: where?.call(PlayerDao.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [PlayerDao] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PlayerDaoTable> where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
  }) async {
    return session.db.lockRows<PlayerDao>(
      where: where(PlayerDao.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
