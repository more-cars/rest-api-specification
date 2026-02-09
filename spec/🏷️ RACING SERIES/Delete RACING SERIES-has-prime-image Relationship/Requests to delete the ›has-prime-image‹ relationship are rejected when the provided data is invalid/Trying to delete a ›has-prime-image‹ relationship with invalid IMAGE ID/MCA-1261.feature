@REQ_MCA-1256
Feature: Delete RACING SERIES-has-prime-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from RACING SERIES
  So I can clean up bad data or test data

  @RULE_MCA-1259
  Rule: Requests to delete the ›has-prime-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1261 @implemented
    Scenario: Trying to delete a ›has-prime-image‹ relationship with invalid IMAGE ID
      Given there exists a "RACING SERIES" "DTM"
      And "IMAGE" "Tokyo Drift" does NOT exist
      When the user deletes the "has prime image" relationship between "DTM" and "Tokyo Drift"
      Then the request should be rejected with status code 404
