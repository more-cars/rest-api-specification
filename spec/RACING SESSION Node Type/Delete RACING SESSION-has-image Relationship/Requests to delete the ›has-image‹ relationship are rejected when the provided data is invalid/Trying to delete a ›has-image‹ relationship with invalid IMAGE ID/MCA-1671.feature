@REQ_MCA-1666
Feature: Delete RACING SESSION-has-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from RACING SESSIONS
  So I can clean up bad data or test data

  @RULE_MCA-1669
  Rule: Requests to delete the ›has-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1671 @implemented
    Scenario: Trying to delete a ›has-image‹ relationship with invalid IMAGE ID
      Given there exists a "RACING SESSION" "Grand Prix"
      And "IMAGE" "qualifying photo" does NOT exist
      When the user deletes the "has image" relationship between "Grand Prix" and "qualifying photo"
      Then the request should be rejected with status code 404
