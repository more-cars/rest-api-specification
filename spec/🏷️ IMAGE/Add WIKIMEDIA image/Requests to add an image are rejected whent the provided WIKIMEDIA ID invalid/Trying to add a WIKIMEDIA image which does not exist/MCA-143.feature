@REQ_MCA-88
Feature: Add WIKIMEDIA image
  As an API contributor\
  I want to add WIKIMEDIA images just by their IDs\
  So I don't have to fill out all fields manually

  @RULE_MCA-119
  Rule: Requests to add an image are rejected whent the provided WIKIMEDIA ID invalid

    @TEST_MCA-143 @manual_test
    Scenario: Trying to add a WIKIMEDIA image which does not exist
      Given there exists no Wikimedia image with ID "WM123456"
      When the user creates a "IMAGE" with the following data
        | key            | value     |
        | image_provider | wikimedia |
        | external_id    | WM123456  |
      Then the request should be rejected with status code 422
