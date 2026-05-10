@REQ_MCA-3278
Feature: Create PROGRAMME EPISODE Node
  As an API contributor
  I want to be able to create PROGRAMME EPISODES
  So I can fill gaps in the database

  @RULE_MCA-3284
  Rule: The response contains all specified properties when creating a PROGRAMME EPISODE

    @TEST_MCA-3286 @implemented
    Scenario: Expecting empty properties to be returned as null values when creating a PROGRAMME EPISODE
      When the user creates a "PROGRAMME EPISODE" "Polar Special" with the following data
        | key   | value          |
        | title | The Falls Guys |
      Then the response should contain the following properties
        | key                   | value          |
        | title                 | The Falls Guys |
        | season_number         |                |
        | season_episode_number |                |
        | original_air_date     |                |
        | duration              |                |
