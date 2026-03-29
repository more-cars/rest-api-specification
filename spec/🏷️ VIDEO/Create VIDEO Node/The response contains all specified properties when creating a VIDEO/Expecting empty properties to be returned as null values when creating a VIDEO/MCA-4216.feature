@REQ_MCA-4208
Feature: Create VIDEO Node
  As an API contributor\
  I want to be able to create VIDEO nodes\
  So I can later use them to illustrate other nodes

  @RULE_MCA-4214
  Rule: The response contains all specified properties when creating a VIDEO

    @TEST_MCA-4216
    Scenario: Expecting empty properties to be returned as null values when creating a VIDEO
      When the user creates a "VIDEO" "P1 vs F40" with the following data
        | key            | value       | datatype |
        | video_provider | youtube     | string   |
        | external_id    | NqsBncRslsg | string   |
      Then the response should contain the following properties
        | key              | value       | datatype |
        | video_provider   | youtube     | string   |
        | external_id      | NqsBncRslsg | string   |
        | title            |             | string   |
        | description      |             | string   |
        | creator          |             | string   |
        | license          |             | string   |
        | tags             |             | string   |
        | source           |             | string   |
        | duration         |             | string   |
        | thumbnail_url_l  |             | string   |
        | thumbnail_url_m  |             | string   |
        | thumbnail_url_s  |             | string   |
        | thumbnail_url_xs |             | string   |
