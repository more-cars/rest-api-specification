@REQ_MCA-5814
Feature: Update PROGRAMME Node
  As an API contributor
  I want to be able to update a PROGRAMME
  So I can add missing information or fix incorrect data

  @RULE_MCA-5823
  Rule: The response contains all properties that are officially specified when updating a PROGRAMME

    @TEST_MCA-5824 @implemented
    Scenario: Expecting all properties to be returned when updating a PROGRAMME
      Given there exists a "PROGRAMME" "The Grand Tour"
      When the user updates the node "The Grand Tour" with the following data
        | key                          | value      |
        | name                         | Top Gear_2 |
        | aired_from_year              | 2004       |
        | aired_until_year             | 2024       |
        | channel                      | BBC Two_2  |
        | total_seasons                | 35         |
        | total_episodes               | 242        |
        | regular_episode_running_time | PT60M_2    |
        | country_code                 | DE         |
      Then the request should be confirmed with status code 200
      And the response should contain the following properties
        | key                          | value      |
        | name                         | Top Gear_2 |
        | aired_from_year              | 2004       |
        | aired_until_year             | 2024       |
        | channel                      | BBC Two_2  |
        | total_seasons                | 35         |
        | total_episodes               | 242        |
        | regular_episode_running_time | PT60M_2    |
        | country_code                 | DE         |
