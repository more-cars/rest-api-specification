@REQ_MCA-4238
Feature: Add YOUTUBE video
  As an API contributor\
  I want to add YOUTUBE videos just by their IDs\
  So I don't have to fill out all fields manually

  @RULE_MCA-4728
  Rule: YOUTUBE is the only valid video provider

    @TEST_MCA-4732 @implemented
    Scenario: Trying to create a video that is not from YOUTUBE
      When the user creates a "VIDEO" with the following data
        | key            | value   |
        | video_provider | vimeo   |
        | external_id    | V123456 |
      Then the request should be rejected with status code 400
