@REQ_MCA-88
Feature: Add WIKIMEDIA image
  As an API contributor\
  I want to add WIKIMEDIA images just by their IDs\
  So I don't have to fill out all fields manually

  @RULE_MCA-5351
  Rule: Requests to add an image are rejected when there already exists an image with the provided WIKIMEDIA ID

    @TEST_MCA-5354
    Scenario: Trying to add the same WIKIMEDIA image again
      When the user creates a "IMAGE" with the following data
        | key            | value     |
        | image_provider | wikimedia |
        | external_id    | WM123456  |
      Then the request should be confirmed with status code 201
      When the user creates a "IMAGE" with the following data
        | key            | value     |
        | image_provider | wikimedia |
        | external_id    | WM123456  |
      Then the request should be rejected with status code 409
