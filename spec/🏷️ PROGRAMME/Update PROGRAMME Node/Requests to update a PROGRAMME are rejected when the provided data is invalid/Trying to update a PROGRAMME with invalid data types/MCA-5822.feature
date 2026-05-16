@REQ_MCA-5814
Feature: Update PROGRAMME Node
  As an API contributor
  I want to be able to update a PROGRAMME
  So I can add missing information or fix incorrect data

  @RULE_MCA-5821
  Rule: Requests to update a PROGRAMME are rejected when the provided data is invalid

    @TEST_MCA-5822 @implemented
    Scenario: Trying to update a PROGRAMME with invalid data types
      Given there exists a "PROGRAMME" "The Grand Tour"
      When the user updates the node "The Grand Tour" with the following data
        | key                          | value |
        | name                         | 1234  |
        | aired_from_year              | TEST  |
        | aired_until_year             | TEST  |
        | channel                      | 1234  |
        | total_seasons                | TEST  |
        | total_episodes               | TEST  |
        | regular_episode_running_time | 1234  |
        | country_code                 | 1234  |
      Then the request should be rejected with status code 400
