CREATE TABLE IF NOT EXISTS orders (
 id TEXT PRIMARY KEY,
 name TEXT NOT NULL,
 mobile TEXT NOT NULL,
 address TEXT NOT NULL,
 payment TEXT NOT NULL,
 items TEXT NOT NULL,
 total REAL NOT NULL DEFAULT 0,
 status TEXT NOT NULL DEFAULT 'New',
 created_at TEXT NOT NULL DEFAULT (datetime('now'))
);
CREATE INDEX IF NOT EXISTS idx_orders_created ON orders(created_at);
