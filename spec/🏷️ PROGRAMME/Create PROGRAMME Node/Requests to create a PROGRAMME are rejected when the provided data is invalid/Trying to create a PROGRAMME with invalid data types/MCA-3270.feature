@REQ_MCA-3265
Feature: Create PROGRAMME Node
  As an API contributor
  I want to be able to create PROGRAMMES
  So I can fill gaps in the database

  @RULE_MCA-3268
  Rule: Requests to create a PROGRAMME are rejected when the provided data is invalid

    @TEST_MCA-3270 @implemented
    Scenario: Trying to create a PROGRAMME with invalid data types
      When the user tries to create a "PROGRAMME" "Top Gear" with the following data
        | key                          | value    | datatype |
        | name                         | Top Gear | boolean  |
        | aired_from_year              | 2002     | boolean  |
        | aired_until_year             | 2022     | boolean  |
        | channel                      | BBC Two  | boolean  |
        | total_seasons                | 33       | boolean  |
        | total_episodes               | 240      | boolean  |
        | regular_episode_running_time | PT60M    | boolean  |
      Then the request should be rejected with status code 400
