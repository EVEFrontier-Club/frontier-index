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
import '../dao/score_type.dart' as _i2;
import 'package:evefrontier_index/src/generated/protocol.dart' as _i3;

abstract class ScoreHistoryDao
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
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

  static final t = ScoreHistoryDaoTable();

  static const db = ScoreHistoryDaoRepository._();

  @override
  int? id;

  int playerId;

  _i2.ScoreTypeDao scoreType;

  double scoreValue;

  DateTime computedAt;

  Map<String, double> components;

  @override
  _i1.Table<int?> get table => t;

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
      '__className__': 'trust_index.ScoreHistoryDao',
      if (id != null) 'id': id,
      'playerId': playerId,
      'scoreType': scoreType.toJson(),
      'scoreValue': scoreValue,
      'computedAt': computedAt.toJson(),
      'components': components.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'trust_index.ScoreHistoryDao',
      if (id != null) 'id': id,
      'playerId': playerId,
      'scoreType': scoreType.toJson(),
      'scoreValue': scoreValue,
      'computedAt': computedAt.toJson(),
      'components': components.toJson(),
    };
  }

  static ScoreHistoryDaoInclude include() {
    return ScoreHistoryDaoInclude._();
  }

  static ScoreHistoryDaoIncludeList includeList({
    _i1.WhereExpressionBuilder<ScoreHistoryDaoTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ScoreHistoryDaoTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ScoreHistoryDaoTable>? orderByList,
    ScoreHistoryDaoInclude? include,
  }) {
    return ScoreHistoryDaoIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ScoreHistoryDao.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(ScoreHistoryDao.t),
      include: include,
    );
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

class ScoreHistoryDaoUpdateTable extends _i1.UpdateTable<ScoreHistoryDaoTable> {
  ScoreHistoryDaoUpdateTable(super.table);

  _i1.ColumnValue<int, int> playerId(int value) => _i1.ColumnValue(
    table.playerId,
    value,
  );

  _i1.ColumnValue<_i2.ScoreTypeDao, _i2.ScoreTypeDao> scoreType(
    _i2.ScoreTypeDao value,
  ) => _i1.ColumnValue(
    table.scoreType,
    value,
  );

  _i1.ColumnValue<double, double> scoreValue(double value) => _i1.ColumnValue(
    table.scoreValue,
    value,
  );

  _i1.ColumnValue<DateTime, DateTime> computedAt(DateTime value) =>
      _i1.ColumnValue(
        table.computedAt,
        value,
      );

  _i1.ColumnValue<Map<String, double>, Map<String, double>> components(
    Map<String, double> value,
  ) => _i1.ColumnValue(
    table.components,
    value,
  );
}

class ScoreHistoryDaoTable extends _i1.Table<int?> {
  ScoreHistoryDaoTable({super.tableRelation})
    : super(tableName: 'score_history') {
    updateTable = ScoreHistoryDaoUpdateTable(this);
    playerId = _i1.ColumnInt(
      'playerId',
      this,
    );
    scoreType = _i1.ColumnEnum(
      'scoreType',
      this,
      _i1.EnumSerialization.byName,
    );
    scoreValue = _i1.ColumnDouble(
      'scoreValue',
      this,
    );
    computedAt = _i1.ColumnDateTime(
      'computedAt',
      this,
    );
    components = _i1.ColumnSerializable<Map<String, double>>(
      'components',
      this,
    );
  }

  late final ScoreHistoryDaoUpdateTable updateTable;

  late final _i1.ColumnInt playerId;

  late final _i1.ColumnEnum<_i2.ScoreTypeDao> scoreType;

  late final _i1.ColumnDouble scoreValue;

  late final _i1.ColumnDateTime computedAt;

  late final _i1.ColumnSerializable<Map<String, double>> components;

  @override
  List<_i1.Column> get columns => [
    id,
    playerId,
    scoreType,
    scoreValue,
    computedAt,
    components,
  ];
}

class ScoreHistoryDaoInclude extends _i1.IncludeObject {
  ScoreHistoryDaoInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => ScoreHistoryDao.t;
}

class ScoreHistoryDaoIncludeList extends _i1.IncludeList {
  ScoreHistoryDaoIncludeList._({
    _i1.WhereExpressionBuilder<ScoreHistoryDaoTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ScoreHistoryDao.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => ScoreHistoryDao.t;
}

class ScoreHistoryDaoRepository {
  const ScoreHistoryDaoRepository._();

  /// Returns a list of [ScoreHistoryDao]s matching the given query parameters.
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
  Future<List<ScoreHistoryDao>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ScoreHistoryDaoTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ScoreHistoryDaoTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ScoreHistoryDaoTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ScoreHistoryDao>(
      where: where?.call(ScoreHistoryDao.t),
      orderBy: orderBy?.call(ScoreHistoryDao.t),
      orderByList: orderByList?.call(ScoreHistoryDao.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ScoreHistoryDao] matching the given query parameters.
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
  Future<ScoreHistoryDao?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ScoreHistoryDaoTable>? where,
    int? offset,
    _i1.OrderByBuilder<ScoreHistoryDaoTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ScoreHistoryDaoTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ScoreHistoryDao>(
      where: where?.call(ScoreHistoryDao.t),
      orderBy: orderBy?.call(ScoreHistoryDao.t),
      orderByList: orderByList?.call(ScoreHistoryDao.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ScoreHistoryDao] by its [id] or null if no such row exists.
  Future<ScoreHistoryDao?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ScoreHistoryDao>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ScoreHistoryDao]s in the list and returns the inserted rows.
  ///
  /// The returned [ScoreHistoryDao]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  ///
  /// If [ignoreConflicts] is set to `true`, rows that conflict with existing
  /// rows are silently skipped, and only the successfully inserted rows are
  /// returned.
  Future<List<ScoreHistoryDao>> insert(
    _i1.Session session,
    List<ScoreHistoryDao> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<ScoreHistoryDao>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [ScoreHistoryDao] and returns the inserted row.
  ///
  /// The returned [ScoreHistoryDao] will have its `id` field set.
  Future<ScoreHistoryDao> insertRow(
    _i1.Session session,
    ScoreHistoryDao row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<ScoreHistoryDao>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [ScoreHistoryDao]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<ScoreHistoryDao>> update(
    _i1.Session session,
    List<ScoreHistoryDao> rows, {
    _i1.ColumnSelections<ScoreHistoryDaoTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<ScoreHistoryDao>(
      rows,
      columns: columns?.call(ScoreHistoryDao.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ScoreHistoryDao]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ScoreHistoryDao> updateRow(
    _i1.Session session,
    ScoreHistoryDao row, {
    _i1.ColumnSelections<ScoreHistoryDaoTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<ScoreHistoryDao>(
      row,
      columns: columns?.call(ScoreHistoryDao.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ScoreHistoryDao] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ScoreHistoryDao?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<ScoreHistoryDaoUpdateTable>
    columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<ScoreHistoryDao>(
      id,
      columnValues: columnValues(ScoreHistoryDao.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ScoreHistoryDao]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<ScoreHistoryDao>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<ScoreHistoryDaoUpdateTable>
    columnValues,
    required _i1.WhereExpressionBuilder<ScoreHistoryDaoTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ScoreHistoryDaoTable>? orderBy,
    _i1.OrderByListBuilder<ScoreHistoryDaoTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<ScoreHistoryDao>(
      columnValues: columnValues(ScoreHistoryDao.t.updateTable),
      where: where(ScoreHistoryDao.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ScoreHistoryDao.t),
      orderByList: orderByList?.call(ScoreHistoryDao.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [ScoreHistoryDao]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<ScoreHistoryDao>> delete(
    _i1.Session session,
    List<ScoreHistoryDao> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<ScoreHistoryDao>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [ScoreHistoryDao].
  Future<ScoreHistoryDao> deleteRow(
    _i1.Session session,
    ScoreHistoryDao row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ScoreHistoryDao>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<ScoreHistoryDao>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ScoreHistoryDaoTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<ScoreHistoryDao>(
      where: where(ScoreHistoryDao.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ScoreHistoryDaoTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<ScoreHistoryDao>(
      where: where?.call(ScoreHistoryDao.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ScoreHistoryDao] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ScoreHistoryDaoTable> where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ScoreHistoryDao>(
      where: where(ScoreHistoryDao.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
