@REQ_MCA-3265
Feature: Create PROGRAMME Node
  As an API contributor
  I want to be able to create PROGRAMMES
  So I can fill gaps in the database

  @RULE_MCA-3276
  Rule: Read-only properties cannot be overridden by the user when creating a PROGRAMME

    @TEST_MCA-3277 @implemented
    Scenario: Expecting read-only properties to be ignored when creating a PROGRAMME
      When the user creates a "PROGRAMME" "Top Gear" with the following data
        | key                          | value      | datatype |
        | name                         | Top Gear   | string   |
        | aired_from_year              | 2002       | number   |
        | aired_until_year             | 2022       | number   |
        | channel                      | BBC Two    | string   |
        | total_seasons                | 33         | number   |
        | total_episodes               | 240        | number   |
        | regular_episode_running_time | 60         | number   |
        | id                           | 1234       | number   |
        | created_at                   | 2025-01-01 | string   |
        | updated_at                   | 2025-01-01 | string   |
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
