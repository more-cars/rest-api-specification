@REQ_MCA-87
Feature: Add FLICKR image
  As an API contributor\
  I want to add FLICKR images just by their IDs\
  So I don't have to fill out all fields manually

  @RULE_MCA-118
  Rule: The image is created when a valid FLICKR ID is provided

    @TEST_MCA-145
    Scenario: Expecting a FLICKR image to be created when provided with valid data
      When the user creates a "IMAGE" with the following data
        | key            | value    |
        | image_provider | flickr   |
        | external_id    | FL123456 |
      Then the request should be confirmed with status code 201
