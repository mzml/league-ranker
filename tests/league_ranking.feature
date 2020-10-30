Feature: Sports League Table
  https://www.codewars.com/kata/5e0baea9d772160032022e8c
  In order to get a ranking of teams based on the games played
  As round-robin tournament organizer
  I want to determine teams rankings

  Scenario: no games are played in the tournament
    Given '10' teams are playing
    And no games were played
    Then all teams should be ranked first

  Scenario: there is a tie for fourth position
    Given '6' teams are playing
    And the following games are played
      | TeamA | TeamB | ScoreA | ScoreB |
      | 0     | 5     | 2      | 2      |
      | 1     | 4     | 0      | 2      |
      | 2     | 3     | 1      | 2      |
      | 1     | 5     | 2      | 2      |
      | 2     | 0     | 1      | 1      |
      | 3     | 4     | 1      | 1      |
      | 2     | 5     | 0      | 2      |
      | 3     | 1     | 1      | 1      |
      | 4     | 0     | 2      | 0      |
    Then team 0 and 4 should tie for forth place in the tournament
    And team 4 should be first