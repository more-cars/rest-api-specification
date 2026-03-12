@REQ_MCA-3545
Feature: Create PROGRAMME EPISODE-has-image Relationship

  @RULE_MCA-3548
  Rule: Requests to create a ›has-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-3550 @implemented
    Scenario: Trying to create a ›has-image‹ relationship with invalid IMAGE ID
      Given there exists a "PROGRAMME EPISODE" "The Holy Trinity"
      And "IMAGE" "TGT logo" does NOT exist
      When the user creates a "has image" relationship between "The Holy Trinity" and "TGT logo"
      Then the request should be rejected with status code 404
