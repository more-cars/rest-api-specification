@REQ_MCA-3657
Feature: Get all MOTOR SHOW-has-image Relationships

  @RULE_MCA-3662
  Rule: A request to fetch all ›has-image‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-3663 @implemented
    Scenario: Trying to fetch the ›has-image‹ relationships with an invalid MOTOR SHOW ID
      Given "MOTOR SHOW" "IAA Frankfurt" does NOT exist
      When the user requests all "has image" relationships for "IAA Frankfurt"
      Then the request should be rejected with status code 404
