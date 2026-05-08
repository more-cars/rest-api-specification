@REQ_MCA-4208
Feature: Create VIDEO Node
  As an API contributor\
  I want to be able to create VIDEO nodes\
  So I can later use them to illustrate other nodes

  @RULE_MCA-4211
  Rule: Requests to create a VIDEO are rejected when the provided data is invalid

    @TEST_MCA-4213 @implemented
    Scenario: Trying to create a VIDEO with invalid data types
      When the user tries to create a "VIDEO" with the following data
        | key              | value |
        | video_provider   | true  |
        | external_id      | true  |
        | title            | true  |
        | description      | true  |
        | creator          | true  |
        | license          | true  |
        | tags             | true  |
        | source           | true  |
        | duration         | true  |
        | thumbnail_url_l  | true  |
        | thumbnail_url_m  | true  |
        | thumbnail_url_s  | true  |
        | thumbnail_url_xs | true  |
      Then the request should be rejected with status code 400
