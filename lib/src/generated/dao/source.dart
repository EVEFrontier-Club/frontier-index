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
import '../dao/source_type.dart' as _i2;

abstract class SourceDao
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
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

  static final t = SourceDaoTable();

  static const db = SourceDaoRepository._();

  @override
  int? id;

  String sourceKey;

  _i2.SourceTypeDao type;

  double trustLevel;

  String? config;

  DateTime? lastSync;

  bool enabled;

  @override
  _i1.Table<int?> get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
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

  static SourceDaoInclude include() {
    return SourceDaoInclude._();
  }

  static SourceDaoIncludeList includeList({
    _i1.WhereExpressionBuilder<SourceDaoTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<SourceDaoTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<SourceDaoTable>? orderByList,
    SourceDaoInclude? include,
  }) {
    return SourceDaoIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SourceDao.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(SourceDao.t),
      include: include,
    );
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

class SourceDaoUpdateTable extends _i1.UpdateTable<SourceDaoTable> {
  SourceDaoUpdateTable(super.table);

  _i1.ColumnValue<String, String> sourceKey(String value) => _i1.ColumnValue(
    table.sourceKey,
    value,
  );

  _i1.ColumnValue<_i2.SourceTypeDao, _i2.SourceTypeDao> type(
    _i2.SourceTypeDao value,
  ) => _i1.ColumnValue(
    table.type,
    value,
  );

  _i1.ColumnValue<double, double> trustLevel(double value) => _i1.ColumnValue(
    table.trustLevel,
    value,
  );

  _i1.ColumnValue<String, String> config(String? value) => _i1.ColumnValue(
    table.config,
    value,
  );

  _i1.ColumnValue<DateTime, DateTime> lastSync(DateTime? value) =>
      _i1.ColumnValue(
        table.lastSync,
        value,
      );

  _i1.ColumnValue<bool, bool> enabled(bool value) => _i1.ColumnValue(
    table.enabled,
    value,
  );
}

class SourceDaoTable extends _i1.Table<int?> {
  SourceDaoTable({super.tableRelation}) : super(tableName: 'sources') {
    updateTable = SourceDaoUpdateTable(this);
    sourceKey = _i1.ColumnString(
      'sourceKey',
      this,
    );
    type = _i1.ColumnEnum(
      'type',
      this,
      _i1.EnumSerialization.byName,
    );
    trustLevel = _i1.ColumnDouble(
      'trustLevel',
      this,
    );
    config = _i1.ColumnString(
      'config',
      this,
    );
    lastSync = _i1.ColumnDateTime(
      'lastSync',
      this,
    );
    enabled = _i1.ColumnBool(
      'enabled',
      this,
    );
  }

  late final SourceDaoUpdateTable updateTable;

  late final _i1.ColumnString sourceKey;

  late final _i1.ColumnEnum<_i2.SourceTypeDao> type;

  late final _i1.ColumnDouble trustLevel;

  late final _i1.ColumnString config;

  late final _i1.ColumnDateTime lastSync;

  late final _i1.ColumnBool enabled;

  @override
  List<_i1.Column> get columns => [
    id,
    sourceKey,
    type,
    trustLevel,
    config,
    lastSync,
    enabled,
  ];
}

class SourceDaoInclude extends _i1.IncludeObject {
  SourceDaoInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => SourceDao.t;
}

class SourceDaoIncludeList extends _i1.IncludeList {
  SourceDaoIncludeList._({
    _i1.WhereExpressionBuilder<SourceDaoTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(SourceDao.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => SourceDao.t;
}

class SourceDaoRepository {
  const SourceDaoRepository._();

  /// Returns a list of [SourceDao]s matching the given query parameters.
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
  Future<List<SourceDao>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SourceDaoTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<SourceDaoTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<SourceDaoTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<SourceDao>(
      where: where?.call(SourceDao.t),
      orderBy: orderBy?.call(SourceDao.t),
      orderByList: orderByList?.call(SourceDao.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [SourceDao] matching the given query parameters.
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
  Future<SourceDao?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SourceDaoTable>? where,
    int? offset,
    _i1.OrderByBuilder<SourceDaoTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<SourceDaoTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<SourceDao>(
      where: where?.call(SourceDao.t),
      orderBy: orderBy?.call(SourceDao.t),
      orderByList: orderByList?.call(SourceDao.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [SourceDao] by its [id] or null if no such row exists.
  Future<SourceDao?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<SourceDao>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [SourceDao]s in the list and returns the inserted rows.
  ///
  /// The returned [SourceDao]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  ///
  /// If [ignoreConflicts] is set to `true`, rows that conflict with existing
  /// rows are silently skipped, and only the successfully inserted rows are
  /// returned.
  Future<List<SourceDao>> insert(
    _i1.Session session,
    List<SourceDao> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<SourceDao>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [SourceDao] and returns the inserted row.
  ///
  /// The returned [SourceDao] will have its `id` field set.
  Future<SourceDao> insertRow(
    _i1.Session session,
    SourceDao row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<SourceDao>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [SourceDao]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<SourceDao>> update(
    _i1.Session session,
    List<SourceDao> rows, {
    _i1.ColumnSelections<SourceDaoTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<SourceDao>(
      rows,
      columns: columns?.call(SourceDao.t),
      transaction: transaction,
    );
  }

  /// Updates a single [SourceDao]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<SourceDao> updateRow(
    _i1.Session session,
    SourceDao row, {
    _i1.ColumnSelections<SourceDaoTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<SourceDao>(
      row,
      columns: columns?.call(SourceDao.t),
      transaction: transaction,
    );
  }

  /// Updates a single [SourceDao] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<SourceDao?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<SourceDaoUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<SourceDao>(
      id,
      columnValues: columnValues(SourceDao.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [SourceDao]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<SourceDao>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<SourceDaoUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<SourceDaoTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<SourceDaoTable>? orderBy,
    _i1.OrderByListBuilder<SourceDaoTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<SourceDao>(
      columnValues: columnValues(SourceDao.t.updateTable),
      where: where(SourceDao.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SourceDao.t),
      orderByList: orderByList?.call(SourceDao.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [SourceDao]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<SourceDao>> delete(
    _i1.Session session,
    List<SourceDao> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<SourceDao>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [SourceDao].
  Future<SourceDao> deleteRow(
    _i1.Session session,
    SourceDao row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<SourceDao>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<SourceDao>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<SourceDaoTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<SourceDao>(
      where: where(SourceDao.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SourceDaoTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<SourceDao>(
      where: where?.call(SourceDao.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [SourceDao] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<SourceDaoTable> where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
  }) async {
    return session.db.lockRows<SourceDao>(
      where: where(SourceDao.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
