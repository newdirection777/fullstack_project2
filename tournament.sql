-- Table definitions for the tournament project.

-- List of players:
CREATE TABLE players ( name TEXT,
                      id SERIAL );

-- Record match results:
CREATE TABLE matches ( winner INTEGER,
                      loser INTEGER,
                      id SERIAL );

-- Show the number of matches each player has played:
create view matchcounts as select players.id, count(matches.id) as matchcount
  from players left join matches on  players.id = winner or players.id = loser
  group by players.id;

-- Show how many matches each player has won:
create view wincounts as select players.id, count(matches.id) as wincount
  from players left join matches on  players.id = winner group by players.id;

-- Show player standings based on number of wins:
create view standings as select players.id, name, wincount, matchcount
  from players, wincounts, matchcounts
  where players.id = matchcounts.id and players.id = wincounts.id
  order by wincount desc;
