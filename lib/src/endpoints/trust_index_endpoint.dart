import 'package:serverpod/serverpod.dart';
import 'package:evefrontier_index/src/generated/dao/raw_event.dart';
import 'package:evefrontier_index/src/generated/dao/score_type.dart';
import '../services/ingest_service.dart';
import '../services/score_service.dart';

class TrustIndexEndpoint extends Endpoint {
  final IngestService ingestService = IngestService();
  final ScoreService scoreService = ScoreService();

  /// POST /trust/ingest
  /// Тело: { "eventUuid": "...", "playerId": "...", "sourceKey": "...", "eventType": "...", "payload": {...} }
  Future<bool> ingest(Session session, Map<String, dynamic> body) async {
    final event = RawEventDao(
      eventUuid: body['eventUuid'] as String,
      playerId: body['playerId'] as int,
      sourceId: body['sourceKey'] as int,
      eventType: body['eventType'] as String,
      payload: body['payload'] as String,
      receivedAt: DateTime.now().toUtc(),
      processed: false,
    );

    return await ingestService.enqueueRawEvent(session, event);
  }

  /// GET /trust/{playerId}
  Future<Map<String, dynamic>?> getTrustScore(
    Session session,
    String playerId,
  ) async {
    final score = await scoreService.getLatestScore(
      session,
      playerId,
      ScoreTypeDao.trust,
    );
    if (score == null) return null;

    return {
      'playerId': score.playerId,
      'scoreType': score.scoreType,
      'scoreValue': score.scoreValue,
      'components': score.components,
      'confidence': score.confidence,
      'computedAt': score.computedAt.toIso8601String(),
    };
  }
}
