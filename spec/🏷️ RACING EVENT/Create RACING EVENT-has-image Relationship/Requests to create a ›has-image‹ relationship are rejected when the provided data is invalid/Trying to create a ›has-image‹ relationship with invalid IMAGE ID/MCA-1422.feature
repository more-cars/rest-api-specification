@REQ_MCA-1417
Feature: Create RACING EVENT-has-image Relationship

  @RULE_MCA-1420
  Rule: Requests to create a ›has-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1422 @implemented
    Scenario: Trying to create a ›has-image‹ relationship with invalid IMAGE ID
      Given there exists a "RACING EVENT" "GP Silverstone"
      And "IMAGE" "starting grid" does NOT exist
      When the user creates a "has image" relationship between "GP Silverstone" and "starting grid"
      Then the request should be rejected with status code 404
