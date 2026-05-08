@REQ_MCA-3265
Feature: Create PROGRAMME Node
  As an API contributor
  I want to be able to create PROGRAMMES
  So I can fill gaps in the database

  @RULE_MCA-3268
  Rule: Requests to create a PROGRAMME are rejected when the provided data is invalid

    @TEST_MCA-3270 @implemented
    Scenario: Trying to create a PROGRAMME with invalid data types
      When the user tries to create a "PROGRAMME" with the following data
        | key                          | value |
        | name                         | true  |
        | aired_from_year              | true  |
        | aired_until_year             | true  |
        | channel                      | true  |
        | total_seasons                | true  |
        | total_episodes               | true  |
        | regular_episode_running_time | true  |
        | country_code                 | true  |
      Then the request should be rejected with status code 400
