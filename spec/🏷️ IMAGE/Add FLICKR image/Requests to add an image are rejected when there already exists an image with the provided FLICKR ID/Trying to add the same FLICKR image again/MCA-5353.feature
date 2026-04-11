@REQ_MCA-87
Feature: Add FLICKR image
  As an API contributor\
  I want to add FLICKR images just by their IDs\
  So I don't have to fill out all fields manually

  @RULE_MCA-5352
  Rule: Requests to add an image are rejected when there already exists an image with the provided FLICKR ID

    @TEST_MCA-5353 @implemented
    Scenario: Trying to add the same FLICKR image again
      When the user creates a "IMAGE" with the following data
        | key            | value    |
        | image_provider | flickr   |
        | external_id    | FL123456 |
      Then the request should be confirmed with status code 201
      When the user creates a "IMAGE" with the following data
        | key            | value    |
        | image_provider | flickr   |
        | external_id    | FL123456 |
      Then the request should be rejected with status code 409
