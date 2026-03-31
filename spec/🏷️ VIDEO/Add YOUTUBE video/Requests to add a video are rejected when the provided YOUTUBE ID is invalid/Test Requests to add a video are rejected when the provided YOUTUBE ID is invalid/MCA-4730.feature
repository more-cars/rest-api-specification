@REQ_MCA-4238
Feature: Add YOUTUBE video
  As an API contributor\
  I want to add YOUTUBE videos just by their IDs\
  So I don't have to fill out all fields manually

  @RULE_MCA-4726
  Rule: Requests to add a video are rejected when the provided YOUTUBE ID is invalid

    @TEST_MCA-4730
    Scenario: Test Requests to add a video are rejected when the provided YOUTUBE ID is invalid
      Given there exists no YouTube video with ID "YT123456"
      When the user creates a "VIDEO" with the following data
        | key            | value    |
        | video_platform | youtube  |
        | external_id    | YT123456 |
      Then the request should be rejected with status code 422
