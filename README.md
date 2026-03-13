# EVE Frontier Index Module

**EVE Frontier Index** is a modular backend component of the **EVE Frontier Club** ecosystem.  
This module provides the core logic, data models, and API endpoints for computing reputation‑based ratings inside the EVE Frontier universe — starting with the **Trust Index**, a credit‑rating‑style score for players.

The module is designed for extensibility: additional indices (corporation reliability, alliance stability, regional economic health, etc.) can be added without modifying the core backend.

---

## 🌌 Features

- **Trust Index Engine**  
  Computes a player reliability score using economic, behavioral, activity, and social metrics.

- **Modular Data Pipeline**  
  Ingestion → validation → normalization → scoring → explanation.

- **Explainable Scoring**  
  Each score includes component weights, metric breakdowns, and confidence levels.

- **Historical Tracking**  
  Score history is stored for trend analysis and visualizations.

- **Serverpod‑native Architecture**  
  Clean separation of endpoints, services, repositories, and background workers.

---

## 🔧 Endpoints

### `POST /trust/ingest`
Submit raw event data from game APIs or third‑party sources.

### `GET /trust/{playerId}`
Retrieve the latest Trust Index score for a player.

### `GET /trust/leaderboard`
List top players by trust score.

### `GET /trust/explain/{playerId}`
Return a detailed breakdown of the score and contributing metrics.

---

## 🧱 Technologies

- **Dart**  
- **Serverpod** (backend framework)  
- **PostgreSQL** (database)  
- **Docker‑ready** deployment  
- **Jaspr** frontend integration (in the main project)

---

## 🚀 Getting Started

Inside the root backend project:

```bash
dart pub get
serverpod generate
serverpod run
