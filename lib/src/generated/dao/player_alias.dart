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

abstract class PlayerAliasDao
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
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

  static final t = PlayerAliasDaoTable();

  static const db = PlayerAliasDaoRepository._();

  @override
  int? id;

  int playerId;

  String alias;

  int? sourceId;

  DateTime linkedAt;

  @override
  _i1.Table<int?> get table => t;

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
      '__className__': 'trust_index.PlayerAliasDao',
      if (id != null) 'id': id,
      'playerId': playerId,
      'alias': alias,
      if (sourceId != null) 'sourceId': sourceId,
      'linkedAt': linkedAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'trust_index.PlayerAliasDao',
      if (id != null) 'id': id,
      'playerId': playerId,
      'alias': alias,
      if (sourceId != null) 'sourceId': sourceId,
      'linkedAt': linkedAt.toJson(),
    };
  }

  static PlayerAliasDaoInclude include() {
    return PlayerAliasDaoInclude._();
  }

  static PlayerAliasDaoIncludeList includeList({
    _i1.WhereExpressionBuilder<PlayerAliasDaoTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PlayerAliasDaoTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PlayerAliasDaoTable>? orderByList,
    PlayerAliasDaoInclude? include,
  }) {
    return PlayerAliasDaoIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PlayerAliasDao.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(PlayerAliasDao.t),
      include: include,
    );
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

class PlayerAliasDaoUpdateTable extends _i1.UpdateTable<PlayerAliasDaoTable> {
  PlayerAliasDaoUpdateTable(super.table);

  _i1.ColumnValue<int, int> playerId(int value) => _i1.ColumnValue(
    table.playerId,
    value,
  );

  _i1.ColumnValue<String, String> alias(String value) => _i1.ColumnValue(
    table.alias,
    value,
  );

  _i1.ColumnValue<int, int> sourceId(int? value) => _i1.ColumnValue(
    table.sourceId,
    value,
  );

  _i1.ColumnValue<DateTime, DateTime> linkedAt(DateTime value) =>
      _i1.ColumnValue(
        table.linkedAt,
        value,
      );
}

class PlayerAliasDaoTable extends _i1.Table<int?> {
  PlayerAliasDaoTable({super.tableRelation})
    : super(tableName: 'player_aliases') {
    updateTable = PlayerAliasDaoUpdateTable(this);
    playerId = _i1.ColumnInt(
      'playerId',
      this,
    );
    alias = _i1.ColumnString(
      'alias',
      this,
    );
    sourceId = _i1.ColumnInt(
      'sourceId',
      this,
    );
    linkedAt = _i1.ColumnDateTime(
      'linkedAt',
      this,
    );
  }

  late final PlayerAliasDaoUpdateTable updateTable;

  late final _i1.ColumnInt playerId;

  late final _i1.ColumnString alias;

  late final _i1.ColumnInt sourceId;

  late final _i1.ColumnDateTime linkedAt;

  @override
  List<_i1.Column> get columns => [
    id,
    playerId,
    alias,
    sourceId,
    linkedAt,
  ];
}

class PlayerAliasDaoInclude extends _i1.IncludeObject {
  PlayerAliasDaoInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => PlayerAliasDao.t;
}

class PlayerAliasDaoIncludeList extends _i1.IncludeList {
  PlayerAliasDaoIncludeList._({
    _i1.WhereExpressionBuilder<PlayerAliasDaoTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(PlayerAliasDao.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => PlayerAliasDao.t;
}

class PlayerAliasDaoRepository {
  const PlayerAliasDaoRepository._();

  /// Returns a list of [PlayerAliasDao]s matching the given query parameters.
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
  Future<List<PlayerAliasDao>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PlayerAliasDaoTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PlayerAliasDaoTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PlayerAliasDaoTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<PlayerAliasDao>(
      where: where?.call(PlayerAliasDao.t),
      orderBy: orderBy?.call(PlayerAliasDao.t),
      orderByList: orderByList?.call(PlayerAliasDao.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [PlayerAliasDao] matching the given query parameters.
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
  Future<PlayerAliasDao?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PlayerAliasDaoTable>? where,
    int? offset,
    _i1.OrderByBuilder<PlayerAliasDaoTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PlayerAliasDaoTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<PlayerAliasDao>(
      where: where?.call(PlayerAliasDao.t),
      orderBy: orderBy?.call(PlayerAliasDao.t),
      orderByList: orderByList?.call(PlayerAliasDao.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [PlayerAliasDao] by its [id] or null if no such row exists.
  Future<PlayerAliasDao?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<PlayerAliasDao>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [PlayerAliasDao]s in the list and returns the inserted rows.
  ///
  /// The returned [PlayerAliasDao]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  ///
  /// If [ignoreConflicts] is set to `true`, rows that conflict with existing
  /// rows are silently skipped, and only the successfully inserted rows are
  /// returned.
  Future<List<PlayerAliasDao>> insert(
    _i1.Session session,
    List<PlayerAliasDao> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<PlayerAliasDao>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [PlayerAliasDao] and returns the inserted row.
  ///
  /// The returned [PlayerAliasDao] will have its `id` field set.
  Future<PlayerAliasDao> insertRow(
    _i1.Session session,
    PlayerAliasDao row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<PlayerAliasDao>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [PlayerAliasDao]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<PlayerAliasDao>> update(
    _i1.Session session,
    List<PlayerAliasDao> rows, {
    _i1.ColumnSelections<PlayerAliasDaoTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<PlayerAliasDao>(
      rows,
      columns: columns?.call(PlayerAliasDao.t),
      transaction: transaction,
    );
  }

  /// Updates a single [PlayerAliasDao]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<PlayerAliasDao> updateRow(
    _i1.Session session,
    PlayerAliasDao row, {
    _i1.ColumnSelections<PlayerAliasDaoTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<PlayerAliasDao>(
      row,
      columns: columns?.call(PlayerAliasDao.t),
      transaction: transaction,
    );
  }

  /// Updates a single [PlayerAliasDao] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<PlayerAliasDao?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<PlayerAliasDaoUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<PlayerAliasDao>(
      id,
      columnValues: columnValues(PlayerAliasDao.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [PlayerAliasDao]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<PlayerAliasDao>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<PlayerAliasDaoUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<PlayerAliasDaoTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PlayerAliasDaoTable>? orderBy,
    _i1.OrderByListBuilder<PlayerAliasDaoTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<PlayerAliasDao>(
      columnValues: columnValues(PlayerAliasDao.t.updateTable),
      where: where(PlayerAliasDao.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PlayerAliasDao.t),
      orderByList: orderByList?.call(PlayerAliasDao.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [PlayerAliasDao]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<PlayerAliasDao>> delete(
    _i1.Session session,
    List<PlayerAliasDao> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<PlayerAliasDao>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [PlayerAliasDao].
  Future<PlayerAliasDao> deleteRow(
    _i1.Session session,
    PlayerAliasDao row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<PlayerAliasDao>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<PlayerAliasDao>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PlayerAliasDaoTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<PlayerAliasDao>(
      where: where(PlayerAliasDao.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PlayerAliasDaoTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<PlayerAliasDao>(
      where: where?.call(PlayerAliasDao.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [PlayerAliasDao] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PlayerAliasDaoTable> where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
  }) async {
    return session.db.lockRows<PlayerAliasDao>(
      where: where(PlayerAliasDao.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
