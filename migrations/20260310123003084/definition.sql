BEGIN;

--
-- Class NormalizedMetricDao as table normalized_metrics
--
CREATE TABLE "normalized_metrics" (
    "id" bigserial PRIMARY KEY,
    "playerId" bigint NOT NULL,
    "metricKey" text NOT NULL,
    "rawValue" double precision,
    "normalizedValue" double precision,
    "unit" text,
    "computedAt" timestamp without time zone NOT NULL,
    "confidence" double precision NOT NULL,
    "sourceKeys" json,
    "details" text
);

-- Indexes
CREATE INDEX "normalized_metrics_idx" ON "normalized_metrics" USING btree ("playerId", "metricKey");

--
-- Class PlayerAliasDao as table player_aliases
--
CREATE TABLE "player_aliases" (
    "id" bigserial PRIMARY KEY,
    "playerId" bigint NOT NULL,
    "alias" text NOT NULL,
    "sourceId" bigint,
    "linkedAt" timestamp without time zone NOT NULL
);

-- Indexes
CREATE INDEX "player_aliases_idx" ON "player_aliases" USING btree ("playerId", "alias");

--
-- Class PlayerDao as table players
--
CREATE TABLE "players" (
    "id" bigserial PRIMARY KEY,
    "playerId" text NOT NULL,
    "displayName" text NOT NULL,
    "createdAt" timestamp without time zone NOT NULL,
    "lastSeen" timestamp without time zone,
    "metadata" text NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "player_idx" ON "players" USING btree ("playerId");

--
-- Class RawEventDao as table raw_events
--
CREATE TABLE "raw_events" (
    "id" bigserial PRIMARY KEY,
    "eventUuid" text NOT NULL,
    "playerId" bigint NOT NULL,
    "sourceId" bigint NOT NULL,
    "eventType" text NOT NULL,
    "payload" text NOT NULL,
    "receivedAt" timestamp without time zone NOT NULL,
    "processed" boolean NOT NULL,
    "processingError" text
);

-- Indexes
CREATE INDEX "raw_events_idx" ON "raw_events" USING btree ("playerId", "sourceId", "processingError");

--
-- Class ScoreHistoryDao as table score_history
--
CREATE TABLE "score_history" (
    "id" bigserial PRIMARY KEY,
    "playerId" bigint NOT NULL,
    "scoreType" text NOT NULL,
    "scoreValue" double precision NOT NULL,
    "computedAt" timestamp without time zone NOT NULL,
    "components" json NOT NULL
);

-- Indexes
CREATE INDEX "score_history_idx" ON "score_history" USING btree ("playerId", "scoreType", "computedAt");

--
-- Class ScoreDao as table scores
--
CREATE TABLE "scores" (
    "id" bigserial PRIMARY KEY,
    "playerId" bigint NOT NULL,
    "scoreType" text NOT NULL,
    "scoreValue" double precision NOT NULL,
    "components" json NOT NULL,
    "rawComponents" text,
    "computedAt" timestamp without time zone NOT NULL,
    "confidence" double precision NOT NULL,
    "explanation" text
);

-- Indexes
CREATE INDEX "score_idx" ON "scores" USING btree ("playerId", "scoreType");

--
-- Class SourceDao as table sources
--
CREATE TABLE "sources" (
    "id" bigserial PRIMARY KEY,
    "sourceKey" text NOT NULL,
    "type" text NOT NULL,
    "trustLevel" double precision NOT NULL,
    "config" text,
    "lastSync" timestamp without time zone,
    "enabled" boolean NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "sources_idx" ON "sources" USING btree ("sourceKey");

--
-- Class CloudStorageEntry as table serverpod_cloud_storage
--
CREATE TABLE "serverpod_cloud_storage" (
    "id" bigserial PRIMARY KEY,
    "storageId" text NOT NULL,
    "path" text NOT NULL,
    "addedTime" timestamp without time zone NOT NULL,
    "expiration" timestamp without time zone,
    "byteData" bytea NOT NULL,
    "verified" boolean NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_cloud_storage_path_idx" ON "serverpod_cloud_storage" USING btree ("storageId", "path");
CREATE INDEX "serverpod_cloud_storage_expiration" ON "serverpod_cloud_storage" USING btree ("expiration");

--
-- Class CloudStorageDirectUploadEntry as table serverpod_cloud_storage_direct_upload
--
CREATE TABLE "serverpod_cloud_storage_direct_upload" (
    "id" bigserial PRIMARY KEY,
    "storageId" text NOT NULL,
    "path" text NOT NULL,
    "expiration" timestamp without time zone NOT NULL,
    "authKey" text NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_cloud_storage_direct_upload_storage_path" ON "serverpod_cloud_storage_direct_upload" USING btree ("storageId", "path");

--
-- Class FutureCallEntry as table serverpod_future_call
--
CREATE TABLE "serverpod_future_call" (
    "id" bigserial PRIMARY KEY,
    "name" text NOT NULL,
    "time" timestamp without time zone NOT NULL,
    "serializedObject" text,
    "serverId" text NOT NULL,
    "identifier" text
);

-- Indexes
CREATE INDEX "serverpod_future_call_time_idx" ON "serverpod_future_call" USING btree ("time");
CREATE INDEX "serverpod_future_call_serverId_idx" ON "serverpod_future_call" USING btree ("serverId");
CREATE INDEX "serverpod_future_call_identifier_idx" ON "serverpod_future_call" USING btree ("identifier");

--
-- Class ServerHealthConnectionInfo as table serverpod_health_connection_info
--
CREATE TABLE "serverpod_health_connection_info" (
    "id" bigserial PRIMARY KEY,
    "serverId" text NOT NULL,
    "timestamp" timestamp without time zone NOT NULL,
    "active" bigint NOT NULL,
    "closing" bigint NOT NULL,
    "idle" bigint NOT NULL,
    "granularity" bigint NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_health_connection_info_timestamp_idx" ON "serverpod_health_connection_info" USING btree ("timestamp", "serverId", "granularity");

--
-- Class ServerHealthMetric as table serverpod_health_metric
--
CREATE TABLE "serverpod_health_metric" (
    "id" bigserial PRIMARY KEY,
    "name" text NOT NULL,
    "serverId" text NOT NULL,
    "timestamp" timestamp without time zone NOT NULL,
    "isHealthy" boolean NOT NULL,
    "value" double precision NOT NULL,
    "granularity" bigint NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_health_metric_timestamp_idx" ON "serverpod_health_metric" USING btree ("timestamp", "serverId", "name", "granularity");

--
-- Class LogEntry as table serverpod_log
--
CREATE TABLE "serverpod_log" (
    "id" bigserial PRIMARY KEY,
    "sessionLogId" bigint NOT NULL,
    "messageId" bigint,
    "reference" text,
    "serverId" text NOT NULL,
    "time" timestamp without time zone NOT NULL,
    "logLevel" bigint NOT NULL,
    "message" text NOT NULL,
    "error" text,
    "stackTrace" text,
    "order" bigint NOT NULL
);

-- Indexes
CREATE INDEX "serverpod_log_sessionLogId_idx" ON "serverpod_log" USING btree ("sessionLogId");

--
-- Class MessageLogEntry as table serverpod_message_log
--
CREATE TABLE "serverpod_message_log" (
    "id" bigserial PRIMARY KEY,
    "sessionLogId" bigint NOT NULL,
    "serverId" text NOT NULL,
    "messageId" bigint NOT NULL,
    "endpoint" text NOT NULL,
    "messageName" text NOT NULL,
    "duration" double precision NOT NULL,
    "error" text,
    "stackTrace" text,
    "slow" boolean NOT NULL,
    "order" bigint NOT NULL
);

--
-- Class MethodInfo as table serverpod_method
--
CREATE TABLE "serverpod_method" (
    "id" bigserial PRIMARY KEY,
    "endpoint" text NOT NULL,
    "method" text NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_method_endpoint_method_idx" ON "serverpod_method" USING btree ("endpoint", "method");

--
-- Class DatabaseMigrationVersion as table serverpod_migrations
--
CREATE TABLE "serverpod_migrations" (
    "id" bigserial PRIMARY KEY,
    "module" text NOT NULL,
    "version" text NOT NULL,
    "timestamp" timestamp without time zone
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_migrations_ids" ON "serverpod_migrations" USING btree ("module");

--
-- Class QueryLogEntry as table serverpod_query_log
--
CREATE TABLE "serverpod_query_log" (
    "id" bigserial PRIMARY KEY,
    "serverId" text NOT NULL,
    "sessionLogId" bigint NOT NULL,
    "messageId" bigint,
    "query" text NOT NULL,
    "duration" double precision NOT NULL,
    "numRows" bigint,
    "error" text,
    "stackTrace" text,
    "slow" boolean NOT NULL,
    "order" bigint NOT NULL
);

-- Indexes
CREATE INDEX "serverpod_query_log_sessionLogId_idx" ON "serverpod_query_log" USING btree ("sessionLogId");

--
-- Class ReadWriteTestEntry as table serverpod_readwrite_test
--
CREATE TABLE "serverpod_readwrite_test" (
    "id" bigserial PRIMARY KEY,
    "number" bigint NOT NULL
);

--
-- Class RuntimeSettings as table serverpod_runtime_settings
--
CREATE TABLE "serverpod_runtime_settings" (
    "id" bigserial PRIMARY KEY,
    "logSettings" json NOT NULL,
    "logSettingsOverrides" json NOT NULL,
    "logServiceCalls" boolean NOT NULL,
    "logMalformedCalls" boolean NOT NULL
);

--
-- Class SessionLogEntry as table serverpod_session_log
--
CREATE TABLE "serverpod_session_log" (
    "id" bigserial PRIMARY KEY,
    "serverId" text NOT NULL,
    "time" timestamp without time zone NOT NULL,
    "module" text,
    "endpoint" text,
    "method" text,
    "duration" double precision,
    "numQueries" bigint,
    "slow" boolean,
    "error" text,
    "stackTrace" text,
    "authenticatedUserId" bigint,
    "userId" text,
    "isOpen" boolean,
    "touched" timestamp without time zone NOT NULL
);

-- Indexes
CREATE INDEX "serverpod_session_log_serverid_idx" ON "serverpod_session_log" USING btree ("serverId");
CREATE INDEX "serverpod_session_log_time_idx" ON "serverpod_session_log" USING btree ("time");
CREATE INDEX "serverpod_session_log_touched_idx" ON "serverpod_session_log" USING btree ("touched");
CREATE INDEX "serverpod_session_log_isopen_idx" ON "serverpod_session_log" USING btree ("isOpen");

--
-- Foreign relations for "normalized_metrics" table
--
ALTER TABLE ONLY "normalized_metrics"
    ADD CONSTRAINT "normalized_metrics_fk_0"
    FOREIGN KEY("playerId")
    REFERENCES "players"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- Foreign relations for "player_aliases" table
--
ALTER TABLE ONLY "player_aliases"
    ADD CONSTRAINT "player_aliases_fk_0"
    FOREIGN KEY("playerId")
    REFERENCES "players"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "player_aliases"
    ADD CONSTRAINT "player_aliases_fk_1"
    FOREIGN KEY("sourceId")
    REFERENCES "sources"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- Foreign relations for "raw_events" table
--
ALTER TABLE ONLY "raw_events"
    ADD CONSTRAINT "raw_events_fk_0"
    FOREIGN KEY("playerId")
    REFERENCES "players"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "raw_events"
    ADD CONSTRAINT "raw_events_fk_1"
    FOREIGN KEY("sourceId")
    REFERENCES "sources"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- Foreign relations for "score_history" table
--
ALTER TABLE ONLY "score_history"
    ADD CONSTRAINT "score_history_fk_0"
    FOREIGN KEY("playerId")
    REFERENCES "players"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- Foreign relations for "scores" table
--
ALTER TABLE ONLY "scores"
    ADD CONSTRAINT "scores_fk_0"
    FOREIGN KEY("playerId")
    REFERENCES "players"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- Foreign relations for "serverpod_log" table
--
ALTER TABLE ONLY "serverpod_log"
    ADD CONSTRAINT "serverpod_log_fk_0"
    FOREIGN KEY("sessionLogId")
    REFERENCES "serverpod_session_log"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;

--
-- Foreign relations for "serverpod_message_log" table
--
ALTER TABLE ONLY "serverpod_message_log"
    ADD CONSTRAINT "serverpod_message_log_fk_0"
    FOREIGN KEY("sessionLogId")
    REFERENCES "serverpod_session_log"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;

--
-- Foreign relations for "serverpod_query_log" table
--
ALTER TABLE ONLY "serverpod_query_log"
    ADD CONSTRAINT "serverpod_query_log_fk_0"
    FOREIGN KEY("sessionLogId")
    REFERENCES "serverpod_session_log"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;


--
-- MIGRATION VERSION FOR evefrontier_index_module
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('evefrontier_index_module', '20260310123003084', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20260310123003084', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20260129180959368', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20260129180959368', "timestamp" = now();


COMMIT;
