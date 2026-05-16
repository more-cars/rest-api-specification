@REQ_MCA-5814
Feature: Update PROGRAMME Node
  As an API contributor
  I want to be able to update a PROGRAMME
  So I can add missing information or fix incorrect data

  @RULE_MCA-5823
  Rule: The response contains all properties that are officially specified when updating a PROGRAMME

    @TEST_MCA-5825 @implemented
    Scenario: Expecting empty properties to be returned as null values when updating a PROGRAMME
      Given there exists a "PROGRAMME" "The Grand Tour"
      When the user updates the node "The Grand Tour" with the following data
        | key                          | value      |
        | name                         | Top Gear_2 |
        | aired_from_year              |            |
        | aired_until_year             |            |
        | channel                      |            |
        | total_seasons                |            |
        | total_episodes               |            |
        | regular_episode_running_time |            |
        | country_code                 |            |
      Then the response should contain the following properties
        | key                          | value      |
        | name                         | Top Gear_2 |
        | aired_from_year              |            |
        | aired_until_year             |            |
        | channel                      |            |
        | total_seasons                |            |
        | total_episodes               |            |
        | regular_episode_running_time |            |
        | country_code                 |            |
