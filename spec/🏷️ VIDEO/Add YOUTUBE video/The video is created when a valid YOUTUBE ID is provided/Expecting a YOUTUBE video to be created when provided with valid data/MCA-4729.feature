@REQ_MCA-4238
Feature: Add YOUTUBE video
  As an API contributor\
  I want to add YOUTUBE videos just by their IDs\
  So I don't have to fill out all fields manually

  @RULE_MCA-4725
  Rule: The video is created when a valid YOUTUBE ID is provided

    @TEST_MCA-4729 @implemented
    Scenario: Expecting a YOUTUBE video to be created when provided with valid data
      When the user creates a "VIDEO" with the following data
        | key            | value    |
        | video_provider | youtube  |
        | external_id    | YT123456 |
      Then the request should be confirmed with status code 201
