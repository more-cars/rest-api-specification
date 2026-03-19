@REQ_MCA-3265
Feature: Create PROGRAMME Node
  As an API contributor
  I want to be able to create PROGRAMMES
  So I can fill gaps in the database

  @RULE_MCA-3271
  Rule: The response contains all specified properties when creating a PROGRAMME

    @TEST_MCA-3273 @implemented
    Scenario: Expecting empty properties to be returned as null values when creating a PROGRAMME
      When the user creates a "PROGRAMME" "Top Gear" with the following data
        | key  | value    | datatype |
        | name | Top Gear | string   |
      Then the response should contain the following properties
        | key                          | value    | datatype |
        | name                         | Top Gear | string   |
        | aired_from_year              |          | number   |
        | aired_until_year             |          | number   |
        | channel                      |          | string   |
        | total_seasons                |          | number   |
        | total_episodes               |          | number   |
        | regular_episode_running_time |          | string   |
