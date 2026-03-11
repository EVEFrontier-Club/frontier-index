import 'package:serverpod/serverpod.dart';
import 'package:evefrontier_index_module/src/generated/dao/score.dart';
import 'package:evefrontier_index_module/src/services/utilites/player_utyls.dart';

import '../generated/dao/score_type.dart';

class ScoreService {
  Future<ScoreDao?> getLatestScore(
    Session session,
    String playerId,
    ScoreTypeDao scoreType,
  ) async {
    final player = await PlayerUtils.getPlayerById(session, playerId);
    if (player == null) return null;
    final results = await ScoreDao.db.findFirstRow(
      session,
      where: (s) =>
          s.playerId.equals(player.id!) & s.scoreType.equals(scoreType),
      orderBy: (p0) => p0.computedAt,
      orderDescending: true,
    );

    return results;
  }
}
