@REQ_MCA-87
Feature: Add FLICKR image
  As an API contributor\
  I want to add FLICKR images just by their IDs\
  So I don't have to fill out all fields manually

  @RULE_MCA-117
  Rule: Requests to add an image are rejected when the provided FLICKR ID is invalid

    @TEST_MCA-142
    Scenario: Trying to add a FLICKR image which does not exist
      Given there exists no Flickr image with ID "FL123456"
      When the user creates a "IMAGE" with the following data
        | key            | value    |
        | image_provider | flickr   |
        | external_id    | FL123456 |
      Then the request should be rejected with status code 422
