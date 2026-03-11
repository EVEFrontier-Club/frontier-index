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
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'dart:async' as _i2;

/// {@category Endpoint}
class EndpointTrustIndex extends _i1.EndpointRef {
  EndpointTrustIndex(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'evefrontier_index_module.trustIndex';

  /// POST /trust/ingest
  /// Тело: { "eventUuid": "...", "playerId": "...", "sourceKey": "...", "eventType": "...", "payload": {...} }
  _i2.Future<bool> ingest(Map<String, dynamic> body) =>
      caller.callServerEndpoint<bool>(
        'evefrontier_index_module.trustIndex',
        'ingest',
        {'body': body},
      );

  /// GET /trust/{playerId}
  _i2.Future<Map<String, dynamic>?> getTrustScore(String playerId) =>
      caller.callServerEndpoint<Map<String, dynamic>?>(
        'evefrontier_index_module.trustIndex',
        'getTrustScore',
        {'playerId': playerId},
      );
}

class Caller extends _i1.ModuleEndpointCaller {
  Caller(_i1.ServerpodClientShared client) : super(client) {
    trustIndex = EndpointTrustIndex(this);
  }

  late final EndpointTrustIndex trustIndex;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
    'evefrontier_index_module.trustIndex': trustIndex,
  };
}
