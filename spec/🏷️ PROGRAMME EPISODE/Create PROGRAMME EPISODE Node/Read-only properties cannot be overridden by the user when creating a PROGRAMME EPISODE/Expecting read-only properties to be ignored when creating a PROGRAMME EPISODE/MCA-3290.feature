@REQ_MCA-3278
Feature: Create PROGRAMME EPISODE Node
  As an API contributor
  I want to be able to create PROGRAMME EPISODES
  So I can fill gaps in the database

  @RULE_MCA-3289
  Rule: Read-only properties cannot be overridden by the user when creating a PROGRAMME EPISODE

    @TEST_MCA-3290 @implemented
    Scenario: Expecting read-only properties to be ignored when creating a PROGRAMME EPISODE
      When the user creates a "PROGRAMME EPISODE" "Polar Special" with the following data
        | key                   | value          | datatype |
        | title                 | The Falls Guys | string   |
        | season_number         | 2              | number   |
        | season_episode_number | 2              | number   |
        | original_air_date     | 2017-12-08     | string   |
        | duration              | PT55M          | string   |
        | id                    | 1234           | number   |
        | created_at            | 2025-01-01     | string   |
        | updated_at            | 2025-01-01     | string   |
      Then the response should contain an ID
      And the response should contain the following keys
        | key        |
        | created_at |
        | updated_at |
      But the response should NOT contain the ID 1234
      And the response should NOT contain the following properties
        | key        | value      | datatype |
        | created_at | 2025-01-01 | string   |
        | updated_at | 2025-01-01 | string   |
