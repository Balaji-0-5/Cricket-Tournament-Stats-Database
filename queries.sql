--Queries for insering data

--inseting teams
INSERT INTO "teams" ("team_id", "team_name", "captain", "coach") VALUES
(1, 'India', 'MS Dhoni', 'Gary Kirsten'),
(2, 'Sri Lanka', 'Kumar Sangakkara', 'Trevor Bayliss'),
(3, 'Australia', 'Ricky Ponting', 'Tim Nielsen'),
(4, 'Pakistan', 'Shahid Afridi', 'Waqar Younis'),
(5, 'South Africa', 'Graeme Smith', 'Corrie van Zyl');

--inserting players
INSERT INTO "players" ("player_id", "team_id", "player_name", "role", "batting_style", "bowling_style") VALUES
(1, 1, 'Sachin Tendulkar', 'batsman', 'right-arm batsman', NULL),
(2, 1, 'Zaheer Khan', 'bowler', NULL, 'left-arm seamer'),
(3, 2, 'Tillakaratne Dilshan', 'all-rounder', 'right-arm batsman', 'right-arm spinner'),
(4, 2, 'Lasith Malinga', 'bowler', NULL, 'right-arm seamer'),
(5, 3, 'Shane Watson', 'all-rounder', 'right-arm batsman', 'right-arm seamer'),
(6, 3, 'Brett Lee', 'bowler', NULL, 'right-arm seamer'),
(7, 4, 'Shahid Afridi', 'all-rounder', 'right-arm batsman', 'right-arm spinner'),
(8, 4, 'Umar Gul', 'bowler', NULL, 'right-arm seamer'),
(9, 5, 'AB de Villiers', 'batsman', 'right-arm batsman', NULL),
(10, 5, 'Dale Steyn', 'bowler', NULL, 'right-arm seamer'),
(11, 1, 'Yuvraj Singh', 'all-rounder', 'left-arm batsman', 'left-arm spinner'),
(12, 2, 'Mahela Jayawardene', 'batsman', 'right-arm batsman', NULL),
(13, 1, 'Gautam Gambhir', 'batsman', 'left-arm batsman', NULL),
(14, 2, 'Nuwan Kulasekara', 'bowler', NULL, 'right-arm seamer'),
(15, 3, 'Ricky Ponting', 'batsman', 'right-arm batsman', NULL),
(16, 4, 'Misbah-ul-Haq', 'batsman', 'right-arm batsman', NULL),
(17, 5, 'Jacques Kallis', 'all-rounder', 'right-arm batsman', 'right-arm seamer');

--inserting matches
INSERT INTO "matches" ("match_type", "match_date", "venue", "result", "winning_team_id", "losing_team_id", "man_of_the_match_id") VALUES
('group-stage', '2011-02-19', 'Shere Bangla National Stadium', 'India won by 87 runs', 1, 3, 1),
('group-stage', '2011-02-26', 'R Premadasa Stadium', 'Sri Lanka won by 9 wickets', 2, 4, 5),
('quarter-finals', '2011-03-24', 'Sardar Patel Stadium', 'India won by 5 wickets', 1, 5, 3),
('semi-finals', '2011-03-30', 'R Premadasa Stadium', 'Sri Lanka won by 5 wickets', 2, 4, 6),
('finals', '2011-04-02', 'Wankhede Stadium', 'India won by 6 wickets', 1, 2, 13),
('group-stage', '2011-03-02', 'M Chinnaswamy Stadium', 'India won by 7 wickets', 1, 4, 11),
('group-stage', '2011-03-05', 'Eden Gardens', 'South Africa won by 3 wickets', 5, 3, 9),
('quarter-finals', '2011-03-25', 'Shere Bangla National Stadium', 'Pakistan won by 4 wickets', 4, 2, 8),
('semi-finals', '2011-03-30', 'R Premadasa Stadium', 'Sri Lanka won by 3 wickets', 2, 5, 12),
('group-stage', '2011-03-14', 'R Premadasa Stadium', 'Sri Lanka won by 9 wickets', 2, 3, 3),
('group-stage', '2011-03-08', 'Feroz Shah Kotla', 'India won by 6 wickets', 1, 5, 1),
('group-stage', '2011-03-12', 'R Premadasa Stadium', 'Sri Lanka won by 4 wickets', 2, 4, 4);


--inserting batting stats
INSERT INTO "player_batting_stats" ("player_id", "match_id", "balls_faced", "runs_scored", "is_not_out") VALUES
(1, 1, 140, 120, FALSE),
(3, 1, 120, 100, TRUE),
(5, 2, 80, 90, FALSE),
(7, 2, 20, 10, FALSE),
(9, 3, 70, 80, TRUE),
(11, 4, 60, 50, FALSE),
(13, 5, 100, 97, TRUE),
(15, 5, 42, 55, FALSE),
(1, 6, 120, 110, TRUE),
(3, 6, 80, 75, FALSE),
(5, 7, 100, 95, TRUE),
(7, 7, 60, 40, FALSE),
(9, 8, 85, 70, TRUE),
(11, 8, 40, 35, FALSE),
(13, 9, 90, 85, FALSE),
(15, 9, 50, 45, TRUE),
(1, 10, 130, 120, TRUE),
(1, 11, 140, 120, TRUE),
(3, 11, 80, 70, FALSE),
(5, 12, 60, 55, FALSE),
(7, 12, 40, 30, TRUE),
(3, 10, 90, 80, FALSE);

--inserting bowling stats
INSERT INTO "player_bowling_stats" ("player_id", "match_id", "overs_bowled", "wickets_taken", "dot_balls", "extras", "maiden_overs","runs_conceded") VALUES
(2, 1, 10.0, 4, 40, 5, 1, 45),
(4, 1, 10.0, 2, 35, 3, 0, 55),
(6, 2, 8.0, 3, 30, 4, 0, 40),
(8, 2, 9.0, 2, 32, 5, 1, 50),
(10, 3, 10.0, 2, 38, 2, 1, 60),
(12, 4, 10.0, 4, 42, 6, 2, 48),
(14, 5, 9.0, 3, 36, 4, 1, 54),
(16, 5, 10.0, 2, 34, 3, 0, 49),
(2, 6, 10.0, 3, 35, 5, 1, 42),
(4, 6, 9.0, 2, 32, 4, 0, 50),
(6, 7, 8.0, 4, 30, 2, 1, 38),
(8, 7, 9.0, 3, 34, 3, 0, 44),
(10, 8, 10.0, 5, 40, 2, 2, 45),
(12, 8, 10.0, 3, 36, 4, 1, 48),
(14, 9, 9.0, 4, 38, 3, 0, 50),
(16, 9, 10.0, 2, 34, 2, 1, 45),
(2, 10, 10.0, 3, 35, 5, 1, 42),
(2, 11, 10.0, 4, 40, 5, 1, 45),
(4, 11, 10.0, 3, 35, 4, 0, 55),
(6, 12, 9.0, 4, 30, 3, 1, 50),
(8, 12, 8.0, 2, 32, 4, 0, 40),
(4, 10, 9.0, 2, 32, 4, 0, 50);


--inseting fielding stats
INSERT INTO "player_fielding_stats" ("player_id", "match_id", "catches", "run_outs") VALUES
(1, 1, 1, 0),
(3, 1, 2, 1),
(5, 2, 1, 0),
(7, 2, 2, 0),
(9, 3, 1, 1),
(11, 4, 1, 0),
(13, 5, 2, 0),
(15, 5, 1, 1),
(1, 6, 2, 1),
(3, 6, 1, 0),
(5, 7, 2, 0),
(7, 7, 1, 1),
(9, 8, 1, 1),
(11, 8, 2, 0),
(13, 9, 1, 1),
(15, 9, 2, 0),
(1, 10, 1, 0),
(3, 10, 2, 1);


-- Queries for the player stats and best performances

--Top Run Scorers
SELECT "p"."player_name", SUM("bs"."runs_scored") AS "total_runs"
FROM "players" AS "p"
JOIN "player_batting_stats" AS "bs" USING ("player_id")
GROUP BY "p"."player_name"
ORDER BY "total_runs" DESC
LIMIT 5;

--Top Wicket Takers
SELECT "p"."player_name", SUM("bw"."wickets_taken") AS "total_wickets"
FROM "players" AS "p"
JOIN "player_bowling_stats" AS "bw" USING ("player_id")
GROUP BY "p"."player_name"
ORDER BY "total_wickets" DESC
LIMIT 5;

--Best Batting average
SELECT "p"."player_name",SUM("bs"."runs_scored")/COUNT("bs"."runs_scored") AS "batting_average"
FROM "players" AS "p"
JOIN "player_batting_stats" AS "bs" USING ("player_id")
GROUP BY "p"."player_name"
ORDER BY "batting_average" DESC
LIMIT 5;

--Best Bowling average
SELECT "p"."player_name",SUM("bw"."runs_conceded")/SUM("bw"."wickets_taken") AS "bowling_average"
FROM "players" AS "p"
JOIN "player_bowling_stats" AS "bw" USING ("player_id")
GROUP BY "p"."player_name"
ORDER BY "bowling_average" DESC
LIMIT 5;

--Most Catches
SELECT "p"."player_name" , SUM("fs"."catches") AS "total_catches"
FROM "players" AS "p"
JOIN "player_fielding_stats" AS "fs" USING ("player_id")
GROUP BY "p"."player_name"
ORDER BY "total_catches" DESC
LIMIT 5;

--Most Run Outs
SELECT "p"."player_name" , SUM("fs"."run_outs") AS "total_run_outs"
FROM "players" AS "p"
JOIN "player_fielding_stats" AS "fs" USING ("player_id")
GROUP BY "p"."player_name"
ORDER BY "total_run_outs" DESC
LIMIT 5;

--Highest Individual Score
SELECT "p"."player_name", MAX("bs"."runs_scored") AS "highest_score"
FROM "players" AS "p"
JOIN "player_batting_stats" AS "bs" USING ("player_id")
GROUP BY "p"."player_name"
ORDER BY "highest_score" DESC
LIMIT 5;

--Best Strike Rate(Minimum 10 balls faced)
SELECT "p"."player_name", ROUND((CAST(SUM("bs"."runs_scored") AS REAL) / CAST(SUM("bs"."balls_faced") AS REAL)) * 100, 2) AS "strike_rate"
FROM "players" AS "p"
JOIN "player_batting_stats" AS "bs" USING ("player_id")
GROUP BY "p"."player_name"
HAVING SUM("bs"."balls_faced") >= 10
ORDER BY "strike_rate" DESC
LIMIT 5;

-- Best Bowling Figures
SELECT "p"."player_name", "bw"."wickets_taken", "bw"."runs_conceded"
FROM "players" AS "p"
JOIN "player_bowling_stats" AS "bw" USING ("player_id")
ORDER BY "bw"."wickets_taken" DESC, "bw"."runs_conceded" ASC
LIMIT 5;

--Most Economical Bowler(Minimum 10 overs)
SELECT "p"."player_name", ROUND(CAST(SUM("bw"."runs_conceded") AS REAL)/ CAST(SUM("bw"."overs_bowled") AS REAL),2) AS "economy_rate"
FROM "players" AS "p"
JOIN "player_bowling_stats" AS "bw" USING ("player_id")
GROUP BY "p"."player_name"
HAVING SUM("bw"."overs_bowled") >= 10
ORDER BY "economy_rate" ASC
LIMIT 5;

--Player with most man of the match awards
SELECT "p"."player_name", COUNT("m"."man_of_the_match_id") AS "man_of_the_match_awards"
FROM "players" AS "p"
JOIN "matches" AS "m" ON "p"."player_id"="m"."man_of_the_match_id"
GROUP BY "p"."player_name"
ORDER BY "man_of_the_match_awards" DESC
LIMIT 5;

--View players and  teams
SELECT * FROM "team_players_view";
