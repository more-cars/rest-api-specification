@REQ_MCA-88
Feature: Add WIKIMEDIA image
  As an API contributor\
  I want to add WIKIMEDIA images just by their IDs\
  So I don't have to fill out all fields manually

  @RULE_MCA-120
  Rule: The image is created when a valid WIKIMEDIA ID is provided

    @TEST_MCA-144 @implemented
    Scenario: Expecting a WIKIMEDIA image to be created when provided with valid data
      When the user creates a "IMAGE" with the following data
        | key            | value     |
        | image_provider | wikimedia |
        | external_id    | WM123456  |
      Then the request should be confirmed with status code 201
