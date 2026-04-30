@REQ_MCA-3265
Feature: Create PROGRAMME Node
  As an API contributor
  I want to be able to create PROGRAMMES
  So I can fill gaps in the database

  @RULE_MCA-3266
  Rule: Requests to create a PROGRAMME are accepted when the provided data is valid

    @TEST_MCA-3267 @implemented
    Scenario: Creating a PROGRAMME with valid data
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
      Then the request should be confirmed with status code 201
      And the response should return the "PROGRAMME" "Top Gear"
