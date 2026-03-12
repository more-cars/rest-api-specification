@REQ_MCA-3278
Feature: Create PROGRAMME EPISODE Node
  As an API contributor
  I want to be able to create PROGRAMME EPISODES
  So I can fill gaps in the database

  @RULE_MCA-3281
  Rule: Requests to create a PROGRAMME EPISODE are rejected when the provided data is invalid

    @TEST_MCA-3283 @implemented
    Scenario: Trying to create a PROGRAMME EPISODE with invalid data types
      When the user tries to create a "PROGRAMME EPISODE" "Polar Special" with the following data
        | key                   | value          | datatype |
        | title                 | The Falls Guys | boolean  |
        | season_number         | 2              | boolean  |
        | season_episode_number | 2              | boolean  |
        | original_air_date     | 2017-12-08     | boolean  |
        | duration              | PT55M          | boolean  |
      Then the request should be rejected with status code 400
