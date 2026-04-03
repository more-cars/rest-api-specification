@REQ_MCA-4208
Feature: Create VIDEO Node
  As an API contributor\
  I want to be able to create VIDEO nodes\
  So I can later use them to illustrate other nodes

  @RULE_MCA-4214
  Rule: The response contains all specified properties when creating a VIDEO

    @TEST_MCA-4215 @implemented
    Scenario: Expecting all properties to be returned when creating a VIDEO
      When the user creates a "VIDEO" "P1 vs F40" with the following data
        | key            | value       | datatype |
        | video_provider | youtube     | string   |
        | external_id    | NqsBncRslsg | string   |
      Then the response should contain the following keys
        | key              |
        | video_provider   |
        | external_id      |
        | title            |
        | description      |
        | creator          |
        | license          |
        | tags             |
        | source           |
        | duration         |
        | thumbnail_url_l  |
        | thumbnail_url_m  |
        | thumbnail_url_s  |
        | thumbnail_url_xs |
