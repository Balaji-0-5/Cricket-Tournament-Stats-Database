-->>DATABASE FOR A CRICKET TOURNAMENT STATS

--Represents all the teams participating in the tournamnet
CREATE TABLE IF NOT EXISTS "teams"(
    "team_id" INTEGER,
    "team_name" TEXT UNIQUE NOT NULL,
    "captain" TEXT NOT NULL,
    "coach" TEXT NOT NULL,
    PRIMARY KEY ("team_id")
);

--Represents all the players participating in the tournament
CREATE TABLE IF NOT EXISTS "players"(
    "player_id" INTEGER,
    "team_id" INT NOT NULL,
    "player_name" TEXT NOT NULL,
    "role" TEXT NOT NULL CHECK("role" IN ('batsman','bowler','all-rounder')),
    "batting_style" TEXT,
    "bowling_style" TEXT ,
    PRIMARY KEY ("player_id")
    FOREIGN KEY ("team_id") REFERENCES "teams"("team_id")
);

--Contains all the matches held during the tournament
CREATE TABLE IF NOT EXISTS "matches"(
    "match_id" INTEGER,
    "match_type" TEXT NOT NULL CHECK ("match_type" IN ('group-stage','quarter-finals','semi-finals','finals')),
    "match_date" DATE NOT NULL,
    "venue" TEXT NOT NULL,
    "result" TEXT NOT NULL,
    "winning_team_id" INTEGER,
    "losing_team_id" INTEGER,
    "man_of_the_match_id" INTEGER,
    PRIMARY KEY ("match_id"),
    FOREIGN KEY ("winning_team_id") REFERENCES "teams"("team_id"),
    FOREIGN KEY ("losing_team_id") REFERENCES "teams"("team_id"),
    FOREIGN KEY ("man_of_the_match_id") REFERENCES "players"("player_id")
);

--Represents the player batting stats in each game of the tournamnet
CREATE TABLE IF NOT EXISTS "player_batting_stats"(
    "stat_id" INTEGER,
    "player_id" INTEGER NOT NULL,
    "match_id" INTEGER NOT NULL,
    "balls_faced" INTEGER,
    "runs_scored" INTEGER,
    "is_not_out" BOOLEAN NOT NULL,
    PRIMARY KEY("stat_id"),
    FOREIGN KEY ("player_id") REFERENCES "players"("player_id"),
    FOREIGN KEY ("match_id") REFERENCES "matches"("match_id")
);

--Represents the player bowling stats in each game of the tournamnet
CREATE TABLE IF NOT EXISTS "player_bowling_stats"(
    "stat_id" INTEGER,
    "player_id" INTEGER NOT NULL,
    "match_id" INTEGER NOT NULL,
    "overs_bowled" REAL,
    "runs_conceded" INTEGER,
    "wickets_taken" INTEGER,
    "dot_balls" INTEGER,
    "extras" INTEGER,
    "maiden_overs" INTEGER,
    PRIMARY KEY("stat_id"),
    FOREIGN KEY ("player_id") REFERENCES "players"("player_id"),
    FOREIGN KEY ("match_id") REFERENCES "matches"("match_id")
);

--Represents the player fielding stats in each game of the tournamnet
CREATE TABLE IF NOT EXISTS "player_fielding_stats"(
    "stat_id" INTEGER,
    "player_id" INTEGER NOT NULL,
    "match_id" INTEGER NOT NULL,
    "catches" INTEGER,
    "run_outs" INTEGER,
    PRIMARY KEY("stat_id"),
    FOREIGN KEY ("player_id") REFERENCES "players"("player_id"),
    FOREIGN KEY ("match_id") REFERENCES "matches"("match_id")
);


CREATE VIEW IF NOT EXISTS "team_players_view" AS
SELECT "t"."team_name", "p"."player_name", "p"."role"
FROM "teams" AS "t"
JOIN "players" AS "p" USING ("team_id")
ORDER BY "team_name","role";


CREATE INDEX IF NOT EXISTS "by_player_batting_stats" ON "player_batting_stats"("player_id", "runs_scored", "balls_faced");
CREATE INDEX IF NOT EXISTS "by_player_bowling_stats" ON "player_bowling_stats"("player_id", "wickets_taken", "runs_conceded", "overs_bowled");
CREATE INDEX IF NOT EXISTS "by_player_fielding_stats" ON "player_fielding_stats"("player_id", "catches", "run_outs");
CREATE INDEX IF NOT EXISTS "by_matches_man_of_the_match" ON "matches"("man_of_the_match_id");
