// lib/src/services/ingest_service.dart
import 'package:serverpod/serverpod.dart';
import 'package:evefrontier_index/src/generated/dao/raw_event.dart';

class IngestService {
  Future<bool> enqueueRawEvent(Session session, RawEventDao event) async {
    if (event.eventUuid.isEmpty) {
      return false;
    }

    // Сохраняем raw event
    await RawEventDao.db.insert(session, [event]);

    // Возвращаем true — фоновые воркеры обработают событие
    return true;
  }
}
