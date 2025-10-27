@REQ_MCA-1229
Feature: Delete RACING SERIES-has-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from RACING SERIES
  So I can clean up bad data or test data

  @RULE_MCA-1232
  Rule: Requests to delete the ›has-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1234 @implemented
    Scenario: Trying to delete a ›has-image‹ relationship with invalid IMAGE ID
      Given there exists a "RACING SERIES" "DTM"
      And "IMAGE" "Formula 1 logo" does NOT exist
      When the user deletes the "has image" relationship between "DTM" and "Formula 1 logo"
      Then the request should be rejected with status code 404
