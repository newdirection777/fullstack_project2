I. Files contained in this project:

1. tournament.sql:
  Contains the table and view definitions for the database, namely:
  A. Tables:
    i) players - list of players
    ii) matches - match results
  B. Views:
    i) matchcounts - shows number of matches each player has played
    ii) wincounts - show number of matches each player has won
    iii) standings - player standings based on number of wins

2. tournament.py:
  Contains python functions to insert and delete players/matches, as well as
  generate Swiss pairings and display player standings.

3. tournament_test.py:
  Contains python funtions for testing various database operations.


II. Running the code:
This package assumes you have Python and PostgreSQL set up on your machine.
Assuming that is the case, all you have to do is run:

python tournament_test.py
