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

abstract class ScoreDao
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
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

  static final t = ScoreDaoTable();

  static const db = ScoreDaoRepository._();

  @override
  int? id;

  int playerId;

  _i2.ScoreTypeDao scoreType;

  double scoreValue;

  Map<String, double> components;

  String? rawComponents;

  DateTime computedAt;

  double confidence;

  String? explanation;

  @override
  _i1.Table<int?> get table => t;

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
      '__className__': 'trust_index.ScoreDao',
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
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'trust_index.ScoreDao',
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

  static ScoreDaoInclude include() {
    return ScoreDaoInclude._();
  }

  static ScoreDaoIncludeList includeList({
    _i1.WhereExpressionBuilder<ScoreDaoTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ScoreDaoTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ScoreDaoTable>? orderByList,
    ScoreDaoInclude? include,
  }) {
    return ScoreDaoIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ScoreDao.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(ScoreDao.t),
      include: include,
    );
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

class ScoreDaoUpdateTable extends _i1.UpdateTable<ScoreDaoTable> {
  ScoreDaoUpdateTable(super.table);

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

  _i1.ColumnValue<Map<String, double>, Map<String, double>> components(
    Map<String, double> value,
  ) => _i1.ColumnValue(
    table.components,
    value,
  );

  _i1.ColumnValue<String, String> rawComponents(String? value) =>
      _i1.ColumnValue(
        table.rawComponents,
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

  _i1.ColumnValue<String, String> explanation(String? value) => _i1.ColumnValue(
    table.explanation,
    value,
  );
}

class ScoreDaoTable extends _i1.Table<int?> {
  ScoreDaoTable({super.tableRelation}) : super(tableName: 'scores') {
    updateTable = ScoreDaoUpdateTable(this);
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
    components = _i1.ColumnSerializable<Map<String, double>>(
      'components',
      this,
    );
    rawComponents = _i1.ColumnString(
      'rawComponents',
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
    explanation = _i1.ColumnString(
      'explanation',
      this,
    );
  }

  late final ScoreDaoUpdateTable updateTable;

  late final _i1.ColumnInt playerId;

  late final _i1.ColumnEnum<_i2.ScoreTypeDao> scoreType;

  late final _i1.ColumnDouble scoreValue;

  late final _i1.ColumnSerializable<Map<String, double>> components;

  late final _i1.ColumnString rawComponents;

  late final _i1.ColumnDateTime computedAt;

  late final _i1.ColumnDouble confidence;

  late final _i1.ColumnString explanation;

  @override
  List<_i1.Column> get columns => [
    id,
    playerId,
    scoreType,
    scoreValue,
    components,
    rawComponents,
    computedAt,
    confidence,
    explanation,
  ];
}

class ScoreDaoInclude extends _i1.IncludeObject {
  ScoreDaoInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => ScoreDao.t;
}

class ScoreDaoIncludeList extends _i1.IncludeList {
  ScoreDaoIncludeList._({
    _i1.WhereExpressionBuilder<ScoreDaoTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ScoreDao.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => ScoreDao.t;
}

class ScoreDaoRepository {
  const ScoreDaoRepository._();

  /// Returns a list of [ScoreDao]s matching the given query parameters.
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
  Future<List<ScoreDao>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ScoreDaoTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ScoreDaoTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ScoreDaoTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ScoreDao>(
      where: where?.call(ScoreDao.t),
      orderBy: orderBy?.call(ScoreDao.t),
      orderByList: orderByList?.call(ScoreDao.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ScoreDao] matching the given query parameters.
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
  Future<ScoreDao?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ScoreDaoTable>? where,
    int? offset,
    _i1.OrderByBuilder<ScoreDaoTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ScoreDaoTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ScoreDao>(
      where: where?.call(ScoreDao.t),
      orderBy: orderBy?.call(ScoreDao.t),
      orderByList: orderByList?.call(ScoreDao.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ScoreDao] by its [id] or null if no such row exists.
  Future<ScoreDao?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ScoreDao>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ScoreDao]s in the list and returns the inserted rows.
  ///
  /// The returned [ScoreDao]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  ///
  /// If [ignoreConflicts] is set to `true`, rows that conflict with existing
  /// rows are silently skipped, and only the successfully inserted rows are
  /// returned.
  Future<List<ScoreDao>> insert(
    _i1.Session session,
    List<ScoreDao> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<ScoreDao>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [ScoreDao] and returns the inserted row.
  ///
  /// The returned [ScoreDao] will have its `id` field set.
  Future<ScoreDao> insertRow(
    _i1.Session session,
    ScoreDao row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<ScoreDao>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [ScoreDao]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<ScoreDao>> update(
    _i1.Session session,
    List<ScoreDao> rows, {
    _i1.ColumnSelections<ScoreDaoTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<ScoreDao>(
      rows,
      columns: columns?.call(ScoreDao.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ScoreDao]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ScoreDao> updateRow(
    _i1.Session session,
    ScoreDao row, {
    _i1.ColumnSelections<ScoreDaoTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<ScoreDao>(
      row,
      columns: columns?.call(ScoreDao.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ScoreDao] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ScoreDao?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<ScoreDaoUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<ScoreDao>(
      id,
      columnValues: columnValues(ScoreDao.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ScoreDao]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<ScoreDao>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<ScoreDaoUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<ScoreDaoTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ScoreDaoTable>? orderBy,
    _i1.OrderByListBuilder<ScoreDaoTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<ScoreDao>(
      columnValues: columnValues(ScoreDao.t.updateTable),
      where: where(ScoreDao.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ScoreDao.t),
      orderByList: orderByList?.call(ScoreDao.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [ScoreDao]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<ScoreDao>> delete(
    _i1.Session session,
    List<ScoreDao> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<ScoreDao>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [ScoreDao].
  Future<ScoreDao> deleteRow(
    _i1.Session session,
    ScoreDao row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ScoreDao>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<ScoreDao>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ScoreDaoTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<ScoreDao>(
      where: where(ScoreDao.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ScoreDaoTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<ScoreDao>(
      where: where?.call(ScoreDao.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ScoreDao] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ScoreDaoTable> where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ScoreDao>(
      where: where(ScoreDao.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
