import 'package:serverpod/server.dart';
import 'package:evefrontier_index/src/generated/dao/player.dart';

class PlayerUtils {
  static Future<PlayerDao?> getPlayerById(
    Session session,
    String playerId,
  ) async {
    final results = await PlayerDao.db.findFirstRow(
      session,
      where: (p) => p.playerId.equals(playerId),
    );
    return results;
  }
}
