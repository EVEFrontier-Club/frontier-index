import 'package:serverpod/server.dart';
import 'package:evefrontier_index/evefrontier_index.dart';

class KilboardScheduller extends FutureCall {
  Future<void> loadData(Session session) async {
    /* await session.serverpod.futureCalls
        .callWithDelay(const Duration(minutes: 60))
        .kilboardScheduller
        .loadData(); */
    await _loadData(session);
  }

  Future<void> _loadData(Session session) async {
    session.log('KilboardScheduller: loadData called at ${DateTime.now()}');
  }
}
