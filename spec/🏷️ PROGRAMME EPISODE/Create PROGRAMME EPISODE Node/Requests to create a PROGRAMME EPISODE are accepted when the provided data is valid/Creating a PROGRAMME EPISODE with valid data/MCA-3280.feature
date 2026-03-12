@REQ_MCA-3278
Feature: Create PROGRAMME EPISODE Node
  As an API contributor
  I want to be able to create PROGRAMME EPISODES
  So I can fill gaps in the database

  @RULE_MCA-3279
  Rule: Requests to create a PROGRAMME EPISODE are accepted when the provided data is valid

    @TEST_MCA-3280 @implemented
    Scenario: Creating a PROGRAMME EPISODE with valid data
      When the user creates a "PROGRAMME EPISODE" "Polar Special" with the following data
        | key                   | value          | datatype |
        | title                 | The Falls Guys | string   |
        | season_number         | 2              | number   |
        | season_episode_number | 2              | number   |
        | original_air_date     | 2017-12-08     | string   |
        | duration              | PT55M          | string   |
      Then the request should be confirmed with status code 201
      And the response should return the "PROGRAMME EPISODE" "Polar Special"
