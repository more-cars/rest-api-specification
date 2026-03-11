@REQ_MCA-3278
Feature: Create PROGRAMME EPISODE Node
  As an API contributor
  I want to be able to create PROGRAMME EPISODES
  So I can fill gaps in the database

  @RULE_MCA-3287
  Rule: Unknown properties are ignored when creating a PROGRAMME EPISODE

    @TEST_MCA-3288
    Scenario: Expecting unknown properties to be ignored when creating a PROGRAMME EPISODE
      When the user creates a "PROGRAMME EPISODE" "Polar Special" with the following data
        | key                   | value          | datatype |
        | title                 | The Falls Guys | string   |
        | season_number         | 2              | number   |
        | season_episode_number | 2              | number   |
        | original_air_date     | 2017-12-08     | string   |
        | duration              | PT55M          | string   |
        | thimbleweed           | park           | string   |
      Then the response should contain the following properties
        | key                   | value          | datatype |
        | title                 | The Falls Guys | string   |
        | season_number         | 2              | number   |
        | season_episode_number | 2              | number   |
        | original_air_date     | 2017-12-08     | string   |
        | duration              | PT55M          | string   |
      And the response should NOT contain the following keys
        | key         |
        | thimbleweed |
