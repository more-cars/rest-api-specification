@REQ_MCA-3265
Feature: Create PROGRAMME Node
  As an API contributor
  I want to be able to create PROGRAMMES
  So I can fill gaps in the database

  @RULE_MCA-3271
  Rule: The response contains all specified properties when creating a PROGRAMME

    @TEST_MCA-3272 @implemented
    Scenario: Expecting all properties to be returned when creating a PROGRAMME
      When the user creates a "PROGRAMME" "Top Gear" with the following data
        | key                          | value    |
        | name                         | Top Gear |
        | aired_from_year              | 2002     |
        | aired_until_year             | 2022     |
        | channel                      | BBC Two  |
        | total_seasons                | 33       |
        | total_episodes               | 240      |
        | regular_episode_running_time | PT60M    |
        | country_code                 | GB       |
      Then the response should contain the following properties
        | key                          | value    |
        | name                         | Top Gear |
        | aired_from_year              | 2002     |
        | aired_until_year             | 2022     |
        | channel                      | BBC Two  |
        | total_seasons                | 33       |
        | total_episodes               | 240      |
        | regular_episode_running_time | PT60M    |
        | country_code                 | GB       |
