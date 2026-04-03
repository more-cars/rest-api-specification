@REQ_MCA-4238
Feature: Add YOUTUBE video
  As an API contributor\
  I want to add YOUTUBE videos just by their IDs\
  So I don't have to fill out all fields manually

  @RULE_MCA-4727
  Rule: Requests to add a video are rejected when there already exists a video with the provided YOUTUBE ID

    @TEST_MCA-4731 @implemented
    Scenario: Trying to add the same YOUTUBE video again
      When the user creates a "VIDEO" with the following data
        | key            | value    |
        | video_provider | youtube  |
        | external_id    | YT123456 |
      Then the request should be confirmed with status code 201
      When the user creates a "VIDEO" with the following data
        | key            | value    |
        | video_provider | youtube  |
        | external_id    | YT123456 |
      Then the request should be rejected with status code 409
