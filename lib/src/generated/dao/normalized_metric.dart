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
import 'package:evefrontier_index/src/generated/protocol.dart' as _i2;

abstract class NormalizedMetricDao
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  NormalizedMetricDao._({
    this.id,
    required this.playerId,
    required this.metricKey,
    this.rawValue,
    this.normalizedValue,
    this.unit,
    required this.computedAt,
    required this.confidence,
    this.sourceKeys,
    this.details,
  });

  factory NormalizedMetricDao({
    int? id,
    required int playerId,
    required String metricKey,
    double? rawValue,
    double? normalizedValue,
    String? unit,
    required DateTime computedAt,
    required double confidence,
    List<int>? sourceKeys,
    String? details,
  }) = _NormalizedMetricDaoImpl;

  factory NormalizedMetricDao.fromJson(Map<String, dynamic> jsonSerialization) {
    return NormalizedMetricDao(
      id: jsonSerialization['id'] as int?,
      playerId: jsonSerialization['playerId'] as int,
      metricKey: jsonSerialization['metricKey'] as String,
      rawValue: (jsonSerialization['rawValue'] as num?)?.toDouble(),
      normalizedValue: (jsonSerialization['normalizedValue'] as num?)
          ?.toDouble(),
      unit: jsonSerialization['unit'] as String?,
      computedAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['computedAt'],
      ),
      confidence: (jsonSerialization['confidence'] as num).toDouble(),
      sourceKeys: jsonSerialization['sourceKeys'] == null
          ? null
          : _i2.Protocol().deserialize<List<int>>(
              jsonSerialization['sourceKeys'],
            ),
      details: jsonSerialization['details'] as String?,
    );
  }

  static final t = NormalizedMetricDaoTable();

  static const db = NormalizedMetricDaoRepository._();

  @override
  int? id;

  int playerId;

  String metricKey;

  double? rawValue;

  double? normalizedValue;

  String? unit;

  DateTime computedAt;

  double confidence;

  List<int>? sourceKeys;

  String? details;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [NormalizedMetricDao]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  NormalizedMetricDao copyWith({
    int? id,
    int? playerId,
    String? metricKey,
    double? rawValue,
    double? normalizedValue,
    String? unit,
    DateTime? computedAt,
    double? confidence,
    List<int>? sourceKeys,
    String? details,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'trust_index.NormalizedMetricDao',
      if (id != null) 'id': id,
      'playerId': playerId,
      'metricKey': metricKey,
      if (rawValue != null) 'rawValue': rawValue,
      if (normalizedValue != null) 'normalizedValue': normalizedValue,
      if (unit != null) 'unit': unit,
      'computedAt': computedAt.toJson(),
      'confidence': confidence,
      if (sourceKeys != null) 'sourceKeys': sourceKeys?.toJson(),
      if (details != null) 'details': details,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'trust_index.NormalizedMetricDao',
      if (id != null) 'id': id,
      'playerId': playerId,
      'metricKey': metricKey,
      if (rawValue != null) 'rawValue': rawValue,
      if (normalizedValue != null) 'normalizedValue': normalizedValue,
      if (unit != null) 'unit': unit,
      'computedAt': computedAt.toJson(),
      'confidence': confidence,
      if (sourceKeys != null) 'sourceKeys': sourceKeys?.toJson(),
      if (details != null) 'details': details,
    };
  }

  static NormalizedMetricDaoInclude include() {
    return NormalizedMetricDaoInclude._();
  }

  static NormalizedMetricDaoIncludeList includeList({
    _i1.WhereExpressionBuilder<NormalizedMetricDaoTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<NormalizedMetricDaoTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<NormalizedMetricDaoTable>? orderByList,
    NormalizedMetricDaoInclude? include,
  }) {
    return NormalizedMetricDaoIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(NormalizedMetricDao.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(NormalizedMetricDao.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _NormalizedMetricDaoImpl extends NormalizedMetricDao {
  _NormalizedMetricDaoImpl({
    int? id,
    required int playerId,
    required String metricKey,
    double? rawValue,
    double? normalizedValue,
    String? unit,
    required DateTime computedAt,
    required double confidence,
    List<int>? sourceKeys,
    String? details,
  }) : super._(
         id: id,
         playerId: playerId,
         metricKey: metricKey,
         rawValue: rawValue,
         normalizedValue: normalizedValue,
         unit: unit,
         computedAt: computedAt,
         confidence: confidence,
         sourceKeys: sourceKeys,
         details: details,
       );

  /// Returns a shallow copy of this [NormalizedMetricDao]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  NormalizedMetricDao copyWith({
    Object? id = _Undefined,
    int? playerId,
    String? metricKey,
    Object? rawValue = _Undefined,
    Object? normalizedValue = _Undefined,
    Object? unit = _Undefined,
    DateTime? computedAt,
    double? confidence,
    Object? sourceKeys = _Undefined,
    Object? details = _Undefined,
  }) {
    return NormalizedMetricDao(
      id: id is int? ? id : this.id,
      playerId: playerId ?? this.playerId,
      metricKey: metricKey ?? this.metricKey,
      rawValue: rawValue is double? ? rawValue : this.rawValue,
      normalizedValue: normalizedValue is double?
          ? normalizedValue
          : this.normalizedValue,
      unit: unit is String? ? unit : this.unit,
      computedAt: computedAt ?? this.computedAt,
      confidence: confidence ?? this.confidence,
      sourceKeys: sourceKeys is List<int>?
          ? sourceKeys
          : this.sourceKeys?.map((e0) => e0).toList(),
      details: details is String? ? details : this.details,
    );
  }
}

class NormalizedMetricDaoUpdateTable
    extends _i1.UpdateTable<NormalizedMetricDaoTable> {
  NormalizedMetricDaoUpdateTable(super.table);

  _i1.ColumnValue<int, int> playerId(int value) => _i1.ColumnValue(
    table.playerId,
    value,
  );

  _i1.ColumnValue<String, String> metricKey(String value) => _i1.ColumnValue(
    table.metricKey,
    value,
  );

  _i1.ColumnValue<double, double> rawValue(double? value) => _i1.ColumnValue(
    table.rawValue,
    value,
  );

  _i1.ColumnValue<double, double> normalizedValue(double? value) =>
      _i1.ColumnValue(
        table.normalizedValue,
        value,
      );

  _i1.ColumnValue<String, String> unit(String? value) => _i1.ColumnValue(
    table.unit,
    value,
  );

  _i1.ColumnValue<DateTime, DateTime> computedAt(DateTime value) =>
      _i1.ColumnValue(
        table.computedAt,
        value,
      );

  _i1.ColumnValue<double, double> confidence(double value) => _i1.ColumnValue(
    table.confidence,
    value,
  );

  _i1.ColumnValue<List<int>, List<int>> sourceKeys(List<int>? value) =>
      _i1.ColumnValue(
        table.sourceKeys,
        value,
      );

  _i1.ColumnValue<String, String> details(String? value) => _i1.ColumnValue(
    table.details,
    value,
  );
}

class NormalizedMetricDaoTable extends _i1.Table<int?> {
  NormalizedMetricDaoTable({super.tableRelation})
    : super(tableName: 'normalized_metrics') {
    updateTable = NormalizedMetricDaoUpdateTable(this);
    playerId = _i1.ColumnInt(
      'playerId',
      this,
    );
    metricKey = _i1.ColumnString(
      'metricKey',
      this,
    );
    rawValue = _i1.ColumnDouble(
      'rawValue',
      this,
    );
    normalizedValue = _i1.ColumnDouble(
      'normalizedValue',
      this,
    );
    unit = _i1.ColumnString(
      'unit',
      this,
    );
    computedAt = _i1.ColumnDateTime(
      'computedAt',
      this,
    );
    confidence = _i1.ColumnDouble(
      'confidence',
      this,
    );
    sourceKeys = _i1.ColumnSerializable<List<int>>(
      'sourceKeys',
      this,
    );
    details = _i1.ColumnString(
      'details',
      this,
    );
  }

  late final NormalizedMetricDaoUpdateTable updateTable;

  late final _i1.ColumnInt playerId;

  late final _i1.ColumnString metricKey;

  late final _i1.ColumnDouble rawValue;

  late final _i1.ColumnDouble normalizedValue;

  late final _i1.ColumnString unit;

  late final _i1.ColumnDateTime computedAt;

  late final _i1.ColumnDouble confidence;

  late final _i1.ColumnSerializable<List<int>> sourceKeys;

  late final _i1.ColumnString details;

  @override
  List<_i1.Column> get columns => [
    id,
    playerId,
    metricKey,
    rawValue,
    normalizedValue,
    unit,
    computedAt,
    confidence,
    sourceKeys,
    details,
  ];
}

class NormalizedMetricDaoInclude extends _i1.IncludeObject {
  NormalizedMetricDaoInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => NormalizedMetricDao.t;
}

class NormalizedMetricDaoIncludeList extends _i1.IncludeList {
  NormalizedMetricDaoIncludeList._({
    _i1.WhereExpressionBuilder<NormalizedMetricDaoTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(NormalizedMetricDao.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => NormalizedMetricDao.t;
}

class NormalizedMetricDaoRepository {
  const NormalizedMetricDaoRepository._();

  /// Returns a list of [NormalizedMetricDao]s matching the given query parameters.
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
  Future<List<NormalizedMetricDao>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<NormalizedMetricDaoTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<NormalizedMetricDaoTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<NormalizedMetricDaoTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<NormalizedMetricDao>(
      where: where?.call(NormalizedMetricDao.t),
      orderBy: orderBy?.call(NormalizedMetricDao.t),
      orderByList: orderByList?.call(NormalizedMetricDao.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [NormalizedMetricDao] matching the given query parameters.
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
  Future<NormalizedMetricDao?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<NormalizedMetricDaoTable>? where,
    int? offset,
    _i1.OrderByBuilder<NormalizedMetricDaoTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<NormalizedMetricDaoTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<NormalizedMetricDao>(
      where: where?.call(NormalizedMetricDao.t),
      orderBy: orderBy?.call(NormalizedMetricDao.t),
      orderByList: orderByList?.call(NormalizedMetricDao.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [NormalizedMetricDao] by its [id] or null if no such row exists.
  Future<NormalizedMetricDao?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<NormalizedMetricDao>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [NormalizedMetricDao]s in the list and returns the inserted rows.
  ///
  /// The returned [NormalizedMetricDao]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  ///
  /// If [ignoreConflicts] is set to `true`, rows that conflict with existing
  /// rows are silently skipped, and only the successfully inserted rows are
  /// returned.
  Future<List<NormalizedMetricDao>> insert(
    _i1.Session session,
    List<NormalizedMetricDao> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<NormalizedMetricDao>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [NormalizedMetricDao] and returns the inserted row.
  ///
  /// The returned [NormalizedMetricDao] will have its `id` field set.
  Future<NormalizedMetricDao> insertRow(
    _i1.Session session,
    NormalizedMetricDao row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<NormalizedMetricDao>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [NormalizedMetricDao]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<NormalizedMetricDao>> update(
    _i1.Session session,
    List<NormalizedMetricDao> rows, {
    _i1.ColumnSelections<NormalizedMetricDaoTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<NormalizedMetricDao>(
      rows,
      columns: columns?.call(NormalizedMetricDao.t),
      transaction: transaction,
    );
  }

  /// Updates a single [NormalizedMetricDao]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<NormalizedMetricDao> updateRow(
    _i1.Session session,
    NormalizedMetricDao row, {
    _i1.ColumnSelections<NormalizedMetricDaoTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<NormalizedMetricDao>(
      row,
      columns: columns?.call(NormalizedMetricDao.t),
      transaction: transaction,
    );
  }

  /// Updates a single [NormalizedMetricDao] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<NormalizedMetricDao?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<NormalizedMetricDaoUpdateTable>
    columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<NormalizedMetricDao>(
      id,
      columnValues: columnValues(NormalizedMetricDao.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [NormalizedMetricDao]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<NormalizedMetricDao>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<NormalizedMetricDaoUpdateTable>
    columnValues,
    required _i1.WhereExpressionBuilder<NormalizedMetricDaoTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<NormalizedMetricDaoTable>? orderBy,
    _i1.OrderByListBuilder<NormalizedMetricDaoTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<NormalizedMetricDao>(
      columnValues: columnValues(NormalizedMetricDao.t.updateTable),
      where: where(NormalizedMetricDao.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(NormalizedMetricDao.t),
      orderByList: orderByList?.call(NormalizedMetricDao.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [NormalizedMetricDao]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<NormalizedMetricDao>> delete(
    _i1.Session session,
    List<NormalizedMetricDao> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<NormalizedMetricDao>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [NormalizedMetricDao].
  Future<NormalizedMetricDao> deleteRow(
    _i1.Session session,
    NormalizedMetricDao row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<NormalizedMetricDao>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<NormalizedMetricDao>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<NormalizedMetricDaoTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<NormalizedMetricDao>(
      where: where(NormalizedMetricDao.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<NormalizedMetricDaoTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<NormalizedMetricDao>(
      where: where?.call(NormalizedMetricDao.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [NormalizedMetricDao] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<NormalizedMetricDaoTable> where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
  }) async {
    return session.db.lockRows<NormalizedMetricDao>(
      where: where(NormalizedMetricDao.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
